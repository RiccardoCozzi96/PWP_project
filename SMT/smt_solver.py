import os, time, json, argparse


parser = argparse.ArgumentParser(description='Argument parser')
parser.add_argument("--model", help="[base]: assume each piece fixed, [general]: pieces can rotate", required = True, type=str)
parser.add_argument("--override", help="[default: False] set to true to recompute and override previously solved solutions", required = False, default=False, type=bool)
args = parser.parse_args()

MODEL_PATH = f"{args.model.lower()}"
DATA_PATH = "./data"
Z3 = json.load(open("config.json"))["Z3"]
SOLUTIONS_PATH = f"{MODEL_PATH}/solutions"
SMT_SOLUTIONS_PATH = f"{MODEL_PATH}/smt_solutions"
SMT_SRC_PATH = f"{MODEL_PATH}/smt_src"
PLOTS_PATH = f"{MODEL_PATH}/plots"
LOG_PATH = f"{MODEL_PATH}/log.json"
data_files = os.listdir(DATA_PATH)

assert args.model in ["base", "general"]
if args.model == "base": from utils_base import *
else: from utils_general import *

# # # # # # # # # # # # # # # # # # # # # # # # # #  initializing the environment
print("\n* * * * STM solver * * * *\n")

# setup the environment
for folder_name in [MODEL_PATH, SOLUTIONS_PATH, SMT_SOLUTIONS_PATH, SMT_SRC_PATH, PLOTS_PATH]:
    if not os.path.exists(folder_name):
        os.makedirs(folder_name)
        print(f"[SETUP]\tFolder '{folder_name}' created.")
    else:
        print(f"[SETUP]\tFolder '{folder_name}' already exists.")

try:
    with open(LOG_PATH, "r") as f:
        log = json.load(f)
        print(f"[SETUP]\tLog loaded. {len(log.keys())} solution have been recorded")
except:
    open(LOG_PATH, "w")
    log = {}
    print("[SETUP]\tLog created. ")


print(f"[SETUP]\tmodel: {args.model.upper()}")
input("\nPress ENTER to start\n\n")
# # # # # # # # # # # # # # # # # # # # # # # # # # create code and find the solution for each instance


for i, file_name in enumerate(data_files):

    instance_name = file_name.replace(".txt", "")
    solution_file = f"{SOLUTIONS_PATH}/solution_{instance_name}.txt"
    print("\n\n--- Instance", file_name, f" [{i+1}/{len(data_files)}] ---")
    if instance_name in log and not args.override: 
        print(f"\tAlready solved ({str(log[instance_name]).upper()})")
        continue

    # - - - - - - - init log
    log[instance_name] = "aborted"
    with open(LOG_PATH, "w") as f: json.dump(log, f)


    # loading instance
    instance = load_instance(f"{DATA_PATH}/{instance_name}")

    # generate smt code
    generate_smt_code(instance, output_dir=SMT_SRC_PATH)
    print(f"\tSMT source generated.")

    # executing SMT code
    print(f"\tSolving...\t\t[start time {time.strftime('%H:%M')}]")
    t0 = time.time()
    os.system(f"{Z3} ./{SMT_SRC_PATH}/source_{instance_name}.smt > ./{SMT_SOLUTIONS_PATH}/smt_solution_{instance_name}.txt")
    result = round(time.time() - t0, 3)
    print(f"\tsolved in \t\t {result} s")

    # formatting solution
    solution, solution_filename = create_solution_file(f"{SMT_SOLUTIONS_PATH}/smt_solution_{instance_name}.txt", instance, output_dir=SOLUTIONS_PATH)
    if solution != "sat":
        print(f"\tSolution: * {solution} *")
        result = solution
    else:
        print(f"\tSolution saved as \t {solution_filename}")
        # plotting solution 
        img_name = visualize_solution(solution_filename, output_dir=PLOTS_PATH)
        print(f"\tSolution plot saved as\t {img_name}")
        
    
    # - - - - - - - save log
    log[instance_name] = result
    with open(LOG_PATH, "w") as f: json.dump(log, f)

print("\n\n", "-"*20,"All the instance have been solved.")
