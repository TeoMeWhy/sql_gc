import os
import sqlalchemy

import pandas as pd

PY_SRC = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.dirname(PY_SRC)
BASE = os.path.dirname(SRC)
DATA = os.path.join(BASE, "data")

def list_files(path):
    return [ os.path.join(path,i) for i in os.listdir(path) if i.endswith(".csv")]

def open_con():
    con = sqlalchemy.create_engine(f"sqlite:///{DATA}/gc.db")
    return con

def migrate_file(path, con):
    table_name = path.split("/")[-1].replace(".csv", "")
    print(table_name)
    df = pd.read_csv(path)
    df.to_sql(table_name, con, index=False)

def migrate_all(paths, con):
    for i in paths:
        migrate_file(i,con)

def main():
    con = open_con()

    paths = list_files(DATA)

    migrate_all(paths, con)

    for i in con.table_names():
        print(i)

if __name__ == "__main__":
    main()