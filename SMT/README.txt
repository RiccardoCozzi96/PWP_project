Present-Wrapping-Problem
Cozzi R., Liscio A.
 
# SMT Solver 

## CONFIG

Set the cmd key in config.json file as follows:

 - linux: "z3"
 - windows: "cmd /c path/to/z3.exe"

## RUN

- launch the script "smt_solver.py" to solve all the instance
- results will be saved in the corresponding folder, according to the chosen model (base or general)
- solutions and plots will be saved in the omonimous directories
- in the model directory the log.json file will be created. It records the results for each instance (solving times if satisfiable). 
- if a instance is unsatisfiable, the plot will be not created. The result will be saved as "unsatisfiable" in the log
- if an execution takes too long you can interrupt the execution. The result will be saved as "aborted" 
- if a instance has already been faced it will be skipped by default. Set --override=True to recompute all the instances

use the following command on your shell:
> python smt_solver.py 	--model= [base]: assume each piece fixed, [general]: pieces can rotate 
				--override=[optional:
