import numpy as np
import matplotlib.pyplot as plt
import os
import seaborn as sns
import itertools



def load_instance(name, verbose=False):
  with open(name + ".txt") as f:
    instance = f.read()
    if verbose: print(instance)
    instance = instance.split("\n")
    instance = [line for line in instance if line != ""]

  if verbose: print("\n"+str(instance))
  return instance




def generate_smt_code(instance, output_dir="."):
  name = instance[0].replace(" ", "x")
  source = """
; instance $_NAME

; define the shapes of the paper roll
(define-fun width () Int $_MAXWIDTH)
(define-fun height () Int $_MAXHEIGHT)


; FIND: origins of the pieces of paper
$_DEFINE_ORIGINS



; define the shapes of the pieces of paper (derive from the rotation values)
$_DEFINE_SHAPES

; ; ; ; ; FUNCTIONS ; ; ; ; ; ;

; 1) the piece has to be placed so not to exceed the size of the paper roll. Plus, origins have to be positive
(define-fun exceeds ((x Int) (y Int) (w Int) (h Int)) Bool
  (or 
    (> (+ x w) width)
    (> (+ y h) height)
    (< x 0)
    (< y 0)
  )
)

; 2) a piece A overlap with B
(define-fun overlap ( (ax Int) (ay Int) (aw Int) (ah Int)
                      (bx Int) (by Int) (bw Int) (bh Int)) Bool
  (or
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally    : bx <= ax < (bx + bw)
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically      : by <= ay < (by + bh)
    )
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally    : bx <= ax < (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))    ; ends inside vertically       : by < (ay + ah) <= (by + bh)
    )
    (and 
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically      : by <= ay < (by + bh)
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))    ; ends inside horizontally     : bx < (ax + aw) <= (bx + bw)
    )
    (and 
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))    ; ends inside horizontally     : bx < (ax + aw) <= (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))    ; ends inside vertically       : by < (ay + ah) <= (by + bh)
    )
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                   ; starts inside horizontally  : bx <= ax < (bx + bw)
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))     ; ends inside horizontally    : bx < (ax + aw) <= (bx + bw)
      (and (<= ay by) (>= (+ ay ah) (+ by bh)))           ; vertically starts outside before, ends outside after   : (by <= ay) and ((ay + ah) >= (by + bh))
    )
  )
)


; ; ; ; ; ASSERTIONS ; ; ; ; ;

; not exceed constraints
$_ASSERT_NOT_EXCEEDS

; not overlap constraints
$_ASSERT_NOT_OVERLAP


; sat-checking
(check-sat)
(get-model)
"""

  shapes_constraints = ""
  origins_constraints = ""
  not_exceed_constraints = ""
  not_overlap_constraints = ""

  for i, shapes in enumerate(instance[2:]):
    # build shape constraints 
    width, height = tuple(shapes.split(" "))
    shapes_constraints += f"(define-fun p{i+1}_w () Int {width})\n(define-fun p{i+1}_h () Int {height})\n"
    # build origins constraints 
    origins_constraints += f"(declare-const p{i+1}_x Int)\n(declare-const p{i+1}_y Int)\n"
    # build not exceed constraints
    not_exceed_constraints += f"(assert (not (exceeds p{i+1}_x p{i+1}_y p{i+1}_w p{i+1}_h))) ;p{i+1} coordinates do not exceed the sheet dimensions\n"

    # build not overlap constraints
    for j in range(i+2, len(instance[2:])+1):
      not_overlap_constraints += f"(assert (not (overlap p{i+1}_x p{i+1}_y p{i+1}_w p{i+1}_h p{j}_x p{j}_y p{j}_w p{j}_h))) \t;p{i+1} with p{j}\n\n"
      not_overlap_constraints += f"(assert (not (overlap p{j}_x p{j}_y p{j}_w p{j}_h p{i+1}_x p{i+1}_y p{i+1}_w p{i+1}_h))) \t;p{j} with p{i+1}\n"
    
  # edit source code
  source = source.replace("$_NAME", name)
  source = source.replace("$_MAXWIDTH", str(instance[0].split(" ")[0]))
  source = source.replace("$_MAXHEIGHT", str(instance[0].split(" ")[1]))
  source = source.replace("$_DEFINE_SHAPES", shapes_constraints)
  source = source.replace("$_DEFINE_ORIGINS", origins_constraints)
  source = source.replace("$_ASSERT_NOT_EXCEEDS", not_exceed_constraints)
  source = source.replace("$_ASSERT_NOT_OVERLAP", not_overlap_constraints)

  with open(f"{output_dir}/source_{name}.smt", "w") as f: 
    f.write(source)









def create_solution_file(smt_solution, instance, output_dir="."):

  if not os.path.exists(smt_solution):
    print(f"File '{smt_solution}' is empty.")

  with open(smt_solution) as f:
    output = f.read()

    if output.split("\n")[0] == "sat":
      pass
    elif output.split("\n")[0] == "unsat":
      return "UNSAT", None
    else:
      print(f"'{smt_solution}' does not contain a smt solution")
      return "ERROR", None

    output = output.replace("define-fun", "")
    output = output.replace("(", "")
    output = output.replace(")", "")
    output = output.replace("Int", "")
    output = output.split("\n")
    output = [(output[i].strip(), output[i+1].strip()) for i in range(2, len(output)-2, 2)] # format output
    output = [(p, v) for p, v in output if "_x" in p or "_y" in p] # keep only *_x and *_y variables
    output.sort()

    origins = {}
    for i in range(0, len(output)-1, 2):
      point_id = int(output[i][0].split("_")[0].replace("p", "")) # take the point id as integer
      origins[point_id] = (int(output[i][1]),  int(output[i+1][1])) # { id -> (x, y) }
    #print(origins)

    solution_filename = smt_solution.split("/")[-1].replace("smt_", "")
    solution_filename = f"{output_dir}/{solution_filename}"

    with open(solution_filename, "w") as f:
      for i, line in enumerate(instance):
        if i > 1: # skip first two rows
          f.write(f"{line}\t{origins[i-1][0]} {origins[i-1][1]}")
        else:
          f.write(line)
        
        if i < len(instance)-1: 
          f.write("\n")

  return ("sat", solution_filename)
    


# show the olution as a plot and save it as an image file
def visualize_solution(solution_file, verbose=False, save_image=True, show=False, output_dir="."):
  
  with open(solution_file) as f:
    lines = f.readlines()
    if lines == []: 
      return
    if verbose:
      print(lines)
      for line in lines: print(line.replace("\n", ""))

  paper_roll_shape = tuple(lines[0].replace("\n", "").split(" "))
  paper_roll_shape = tuple(int(val) for val in paper_roll_shape)
  if verbose: print("\nPaper roll shape: ", paper_roll_shape)

  n_pieces = int(lines[1])
  if verbose: print(f"\nNumber of pieces: {n_pieces}\n")

  pieces_positions = []
  for line in lines[2:]:
    shape, origin = line.replace("\n", "").split("\t")
    shape = tuple(int(x) for x in shape.split(" "))
    origin = tuple(int(x) for x in origin.split(" "))
    pieces_positions.append([shape, origin])

  paper_roll = np.zeros((paper_roll_shape[0], paper_roll_shape[1]))
  if verbose: print(paper_roll.shape)
  for id, (shape, origin) in enumerate(pieces_positions):
    for i in range(origin[1], origin[1]+shape[1]):
      for j in range(origin[0], origin[0]+shape[0]):

        if paper_roll[i, j] != 0:
          print("piece", f"p{id+1}", "with shape", shape, "overlaps")

        try:
          paper_roll[i, j] = id+1
        except: 
          print("piece", f"p{id+1}", "with shape", shape, "is out of bounds")
          continue

  if verbose: 
    for row in paper_roll:
      for cell in row: 
        print("{:2} ".format(int(cell)), end="")
      print()
    print("\n")

  fig = plt.figure(figsize=(paper_roll_shape[0]*.75, paper_roll_shape[1]*.75))
  plt.title(f"Solution {str(paper_roll_shape)}")
  sns.heatmap(paper_roll, annot=True, linewidths=0,
              cmap=sns.color_palette("cubehelix", as_cmap=True).reversed(),
              vmin=0, vmax=n_pieces,
              cbar=False
  )
  plt.title(f"Solution {str(paper_roll_shape)}")
  plt.close(fig)
  ax = plt.gca()

  # correctness checking: each piece must have a coherent area
  if verbose: 
    ids, freq = np.unique(paper_roll, return_counts=True)
    counts = dict(zip(ids, freq))
    print("\n{:<5} {:10} {:10} {:<15} {:<15} Correct\n{}".format("ID", "Shape", "Origins", "Expected Area", "Actual Area", "-"*80))
    for id, (shape, origin) in enumerate(pieces_positions):
      expected_area = shape[0] * shape[1]
      actual_area = counts[id+1]
      correct = (expected_area == actual_area)
      print("{:<5} {:10} {:10} {:<15} {:<15} {}".format(id+1, str(shape), str(origin), expected_area, actual_area, correct))

  if show:
    plt.show()
    
  if save_image:
    img_name = f"{output_dir}/plot_" + solution_file.split("_")[-1].split(".")[0] + ".png"
    fig.savefig(img_name)

    return img_name
  else:
    return 

