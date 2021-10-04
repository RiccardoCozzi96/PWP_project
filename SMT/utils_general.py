import numpy as np
import matplotlib.pyplot as plt
import os
import seaborn as sns


def load_instance(name, verbose=False):
  with open(name + ".txt") as f:
    instance = f.read()
    if verbose: print(instance)
    instance = instance.split("\n")
    instance = [line for line in instance if line != ""]

  if verbose: print("\n"+str(instance))
  return instance



# generate the smt code according to the instance
def generate_smt_code(instance, output_dir="."):
  name = instance[0].replace(" ", "x")
  source = """
; instance $_NAME

; define the shapes of the paper roll
(define-fun max_width () Int $_MAXWIDTH)
(define-fun max_height () Int $_MAXHEIGHT)

; define the default shapes of the pieces of paper
$_DEFINE_DEFAULT_SHAPES

; define the shapes of the pieces of paper (depending on the rotations)
$_DEFINE_SHAPES

; FIND: orientation of a pieces
$_DEFINE_ROTATIONS

; FIND: origins of the pieces of paper
$_DEFINE_ORIGINS


; ; ; ; ; FUNCTIONS ; ; ; ; ; ;

; 1) the piece has to be placed so not to exceed the size of the paper roll. Plus, origins have to be positive
(define-fun exceeds ((x Int) (y Int) (width Int) (height Int)) Bool
  (or 
    (> (+ x width) max_width)
    (> (+ y height) max_height)
    (< x 0)
    (< y 0)
  )
)

; 2) a piece A overlap with B
(define-fun overlap ( (ax Int) (ay Int) (aw Int) (ah Int)
                      (bx Int) (by Int) (bw Int) (bh Int)) Bool
  (or
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally  : bx <= ax < (bx + bw)
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically    : by <= ay < (by + bh)
    )
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally  : bx <= ax < (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))   ; ends inside vertically      : by < (ay + ah) <= (by + bh)
    )
    (and 
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically    : by <= ay < (by + bh)
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))   ; ends inside horizontally    : bx < (ax + aw) <= (bx + bw)
    )
    (and 
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))   ; ends inside horizontally    : bx < (ax + aw) <= (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))   ; ends inside vertically      : by < (ay + ah) <= (by + bh)
    )
    (and 
      (or (and (<= by ay) (< ay (+ by bh)))                   ; starts inside vertically  : by <= ay < (by + bh)
          (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh))))    ; ends inside vertically    : by < (ay + ah) <= (by + bh)
      (and (<= ax bx) (>= (+ ax aw) (+ bx bw)))               ; horizontally starts before, ends after   : (bx <= ax) and ((ax + aw) >= (bx + bw))
    )
  )
)


; ; ; ; ; ASSERTIONS ; ; ; ; ;

; not exceed constraints
$_ASSERT_NOT_EXCEEDS

; not overlap constraints
$_ASSERT_NOT_OVERLAP


; sat-checking
(set-option :timeout 1800000)
(check-sat)
(get-model)
"""

  shapes_constraints = ""
  origins_constraints = ""
  not_exceed_constraints = ""
  not_overlap_constraints = ""
  default_shapes_constraints = ""
  rotation_constraints = ""

  for i, shapes in enumerate(instance[2:]):
   

    # build shape constraints 
    width, height = tuple(shapes.split(" "))
    default_shapes_constraints += f"(define-fun p{i+1}_w_default () Int {width})\n(define-fun p{i+1}_h_default () Int {height})\n"
    
    # build shapes constraints
    shapes_constraints += f"(declare-const p{i+1}_w Int)\n(declare-const p{i+1}_h Int)\n"

    # build rotation constraints
    rotation_constraints += f"(assert (or (and (= p{i+1}_w p{i+1}_w_default) (= p{i+1}_h p{i+1}_h_default)) \
                            \r            (and (= p{i+1}_w p{i+1}_h_default) (= p{i+1}_h p{i+1}_w_default)) ))\n\n"

    # build origins constraints 
    origins_constraints += f"(declare-const p{i+1}_x Int)\n(declare-const p{i+1}_y Int)\n"
    
    # build not exceed constraints
    not_exceed_constraints += f"(assert (not (exceeds p{i+1}_x p{i+1}_y p{i+1}_w p{i+1}_h))) ;p{i+1} coordinates do not exceed the sheet dimensions\n"

    # build not overlap constraints
    for j in range(i+2, len(instance[2:])+1):
      not_overlap_constraints += f"(assert (not (overlap p{i+1}_x p{i+1}_y p{i+1}_w p{i+1}_h p{j}_x p{j}_y p{j}_w p{j}_h))) \t;p{i+1} with p{j}\n"
      not_overlap_constraints += f"(assert (not (overlap p{j}_x p{j}_y p{j}_w p{j}_h p{i+1}_x p{i+1}_y p{i+1}_w p{i+1}_h))) \t;p{j} with p{i+1}\n\n"
  
  # edit source code
  source = source.replace("$_NAME", name)
  source = source.replace("$_MAXWIDTH", str(instance[0].split(" ")[0]))
  source = source.replace("$_MAXHEIGHT", str(instance[0].split(" ")[1]))
  source = source.replace("$_DEFINE_DEFAULT_SHAPES", default_shapes_constraints)
  source = source.replace("$_DEFINE_ROTATIONS", rotation_constraints)
  source = source.replace("$_DEFINE_ORIGINS", origins_constraints)
  source = source.replace("$_DEFINE_SHAPES", shapes_constraints)
  source = source.replace("$_ASSERT_NOT_EXCEEDS", not_exceed_constraints)
  source = source.replace("$_ASSERT_NOT_OVERLAP", not_overlap_constraints)

  with open(f"{output_dir}/source_{name}.smt", "w") as f: 
    f.write(source)








def create_solution_file(smt_solution, instance, verbose=False, output_dir="."):
  if not os.path.exists(smt_solution):
    print(f"File '{smt_solution}' not found")

  with open(smt_solution) as f:
    output = f.read()

    if output.split("\n")[0] == "sat":
      pass
    elif output.split("\n")[0] == "unsat":
      return "UNSAT", None
    else:
      print(f"'{smt_solution}' does not contain a smt solution")
      return "ERROR", None
      
    output = output.replace("define-fun", "").replace("(", "").replace(")", "").replace("Int", "").replace("Bool", "")
    output = output.split("\n")
    output = [(output[i].strip(), output[i+1].strip()) for i in range(2, len(output)-2, 2)] # format output
    output = sorted([(name, val) for name,val in output if name[0] == "p"])
    
    shapes = {name:val for name,val in output if ("w" in name or "h" in name) and ("_default" not in name)}
    origins = {name:val for name,val in output if "x" in name or "y" in name}
    default_shapes = {name:val for name,val in output if "default" in name}

    # build the solution
    results = {}
    for i in range(len(instance)-2): #number of pieces
      results[str(i+1)] = {"w":None, "h":None, "x":None, "y":None, "w_default":None, "h_default":None, "rotates":None}

    for key,val in shapes.items():
      p_id = key.split("_")[0].replace("p", "")
      results[p_id][key.split("_")[1]] = val

    for key,val in origins.items():
      p_id = key.split("_")[0].replace("p", "")
      results[p_id][key.split("_")[1]] = val

    for key,val in default_shapes.items():
      p_id = key.split("_")[0].replace("p", "")
      results[p_id][f'{key.split("_")[1]}_default'] = val

    for piece in results.values():
      piece["rotates"] = (piece["w"] != piece["w_default"])

    #for key, vals in results.items():
      # print(f"p{key}: ", vals) 

    solution_filename = f"{output_dir}/{smt_solution.split('/')[-1].replace('smt_', '')}"
    with open(solution_filename, "w") as f:
      f.write(instance[0]+"\n")
      f.write(instance[1]+"\n")
      for piece in results.values():
        f.write(f"{piece['w']} {piece['h']}\t{piece['x']} {piece['y']}\n")

    return "sat", solution_filename



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
  #plt.show()
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
    
