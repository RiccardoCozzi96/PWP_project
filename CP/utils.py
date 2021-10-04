import numpy as np
import matplotlib.pyplot as plt
import os
import seaborn as sns

def plot_solution(solution_file_name, verbose=False, export_folder=None, show=False):
  
  with open(solution_file_name) as f:
    lines = f.readlines()
    if lines == []:  return
    if verbose: 
      for line in lines: print(line.replace("\n", ""))

  paper_roll_shape = tuple(lines[0].replace("\n", "").split(" "))
  paper_roll_shape = tuple(int(val) for val in paper_roll_shape)
  if verbose: print("\nPaper roll shape: ", paper_roll_shape)

  n_pieces = int(lines[1])
  if verbose: print(f"\nNumber of pieces: {n_pieces}\n")

  pieces_positions = []
  for line in lines[2:-1]:
    shape, origin = line.replace("\n", "").split("\t")
    shape = tuple(int(x) for x in shape.split(" "))
    origin = tuple(int(x) for x in origin.split(" "))
    pieces_positions.append([shape, origin])

  paper_roll = np.zeros((paper_roll_shape[0], paper_roll_shape[1]))
  if verbose: print(paper_roll.shape)
  for id, (shape, origin) in enumerate(pieces_positions):
    for i in range(origin[1], origin[1]+shape[1]):
      for j in range(origin[0], origin[0]+shape[0]):
        
        try:
          assert paper_roll[i, j] == 0
        except: 
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

  fig =  plt.figure(figsize=(paper_roll_shape[0]*.75, paper_roll_shape[1]*.5))
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
    
  if export_folder != None:
    img_name = f"{export_folder}/pwp_" + solution_file_name.split("_")[1].split(".")[0] + ".png"
    fig.savefig(img_name)
    return img_name
  else:
    return 