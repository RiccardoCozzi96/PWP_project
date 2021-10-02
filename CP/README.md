Present-Wrapping-Problem
Cozzi R., Liscio A.
 
# CP Solver 

## CONFIG

Set the cmd key in config.json file as follows:

 - linux: "minizinc"
 - windows: "cmd /c path/to/minizinc.exe"

## RUN

- launch the script "minizinc_solver.py" to solve all the instance
- results will be saved in the corresponding folder, according to the chosen model (base or general)
- solutions and plots will be saved in the omonimous directories
- in the model directory the log.json file will be created. It records the results for each instance (solving times if satisfiable). 
- if a instance is unsatisfiable, the plot will be not created. The result will be saved as "unsatisfiable" in the log
- if an execution takes too long you can interrupt the execution. The result will be saved as "aborted" 
- if a instance has already been faced it will be skipped by default. Set --override=True to recompute all the instances

use the following command on your shell with the desired option for the argument
--model: base (assume each piece fixed) or general (pieces can rotate)

```
python minizinc_solver.py --model=MODEL_OPT
```

The optional parameter --override can be used to force the computation of every instances.