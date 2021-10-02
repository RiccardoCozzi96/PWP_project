# Present-Wrapping-Problem
 
## Config

Set the variables in config.json file to point to the minizinc and z3 executables.
Once finished, the config.json file should look like this:

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

## Run

Launch the python solver script to solve all the instances with the relative solver.
Use one of the following commands in your shell with the desired option for the "model" argument:
 - base (pieces rotation allowed)
 - general (pieces rotation not allowed)

#### Minizinc Solver
```
python minizinc_solver.py --model=MODEL_OPT
```
#### Smt Solver
```
python smt_solver.py --model=MODEL_OPT
```

The optional parameter --override can be used to force the computation of every instances.

## Results

Results will be saved in the corresponding folder (solver/model):
 - SOLUTION: /solver/model/solution/\*.txt
 - PLOTS: /solver/model/plots/\*.png
 - LOG: /solver/model/log.json

The log records the results for each instance (solving times if satisfiable). 

## Notes

- If an instance has already been faced it will be skipped by default. Set --override=True to recompute all the instances
- If an instance is unsatisfiable, the plot will be not created. The result will be saved as "unsatisfiable" in the log
- If an execution takes too long you can interrupt the execution. The result will be saved as "aborted"
