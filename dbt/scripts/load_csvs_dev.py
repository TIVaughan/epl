import os
import sqlite3
import pandas as pd

# Path to the SQLite database
db_path = '/Users/timvaughan/Documents/Projects/epl/dev_epl.db'  # Change this to the path of your SQLite database

# Path to the directory containing CSV files
csv_directory = '/Users/timvaughan/Documents/Projects/epl/dbt/seeds'  # Change this to the path of your seeds directory

# Function to load a CSV into SQLite
def load_csv_to_sqlite(csv_file, table_name):
    # Read the CSV file into a pandas DataFrame
    df = pd.read_csv(csv_file, on_bad_lines='skip')

    # Connect to the SQLite database
    conn = sqlite3.connect(db_path)

    # Load the DataFrame into the SQLite table
    df.to_sql(table_name, conn, if_exists='replace', index=False)

    # Close the connection
    conn.close()

    print(f"Loaded {csv_file} into table {table_name}")

# Iterate through each CSV file in the /seeds directory
for csv_file in os.listdir(csv_directory):
    if csv_file.endswith('.csv'):  # Only process CSV files
        # Generate the full file path
        file_path = os.path.join(csv_directory, csv_file)

        # Generate the table name (strip the '.csv' extension)
        table_name = os.path.splitext(csv_file)[0]

        # Load the CSV into the SQLite database
        load_csv_to_sqlite(file_path, table_name)

print("All CSV files have been loaded into the SQLite database.")
