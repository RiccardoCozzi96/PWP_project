import json, os, pandas as pd

logs = {
    "cp_base": json.load(open("./CP/base/log.json")), 
    "cp_general": json.load(open("./CP/general/log.json")),
    # "smt_base": json.load(open("./SMT/base/log.json")),
    # "smt_general": json.load(open("./SMT/general/log.json")),
    # "new": json.load(open("./sandbox/general/log.json")),
}

print(pd.DataFrame(logs))
