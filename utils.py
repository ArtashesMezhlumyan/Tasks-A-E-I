import pandas as pd

def convert_epoch_to_datetime(epoch_time):
    return pd.to_datetime(epoch_time, unit='s')

def read_sql_script(file_path):
    with open(file_path, 'r') as file:
        return file.read()
