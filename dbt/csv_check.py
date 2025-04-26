import csv

def check_csv(file_path):
    with open(file_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile)
        column_count = None
        for row_num, row in enumerate(reader, 1):
            if column_count is None:
                column_count = len(row)
            elif len(row) != column_count:
                print(f"Row {row_num} has {len(row)} columns, expected {column_count}.")
check_csv('/Users/timvaughan/Documents/Projects/epl/dbt/seeds/PL_19_20.csv.csv')
