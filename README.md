# Present-Wrapping-Problem
# Cozzi Riccardo, Liscio Alessandro
 
## CONFIG

Set the variables in config.json file such that they point to the minizinc and 
z3 executables. Once you have finished, the config.json file should look like this:

#### With executable paths
```
{
    "MINIZINC": "cmd /c /path/to/minizinc/executable"
    "Z3":       "cmd /c /path/to/z3/executable"
}
```
#### With environment variables
```
{
    "MINIZINC": "minizinc"
    "Z3": "z3"
}
```

## RUN

- launch the script "minizinc_solver.py" to solve all the instance
- results will be saved in the corresponding folder, according to the chosen model (base or general)
- solutions and plots will be saved in the omonimous directories
- in the model directory the log.json file will be created. It records the results for each instance (solving times if satisfiable). 
- if a instance is unsatisfiable, the plot will be not created. The result will be saved as "unsatisfiable" in the log
- if an execution takes too long you can interrupt the execution. The result will be saved as "aborted" 
- if a instance has already been faced it will be skipped by default. Set --override=True to recompute all the instances

Use the following command on your shell with the desired option for the argument
--model: base (assume each piece fixed) or general (pieces can rotate)

#### Minizinc Solver
```
python minizinc_solver.py --model=MODEL_OPT
```
#### Smt Solver
```
python smt_solver.py --model=MODEL_OPT
```

The optional parameter --override can be used to force the computation of every instances.
