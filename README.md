Project Structure
The project is organized into the following components:

config.py: Stores configurations for the project, including raw data path, query folder path, and database connection details.

utils.py: Contains utility functions used within tasks. It includes functions for converting dates from epoch to datetime and reading SQL scripts from the queries folder.

tasks.py: Defines task functions for creating tables and ingesting data. It includes functions to create tables based on SQL scripts and to read raw data from CSV files and insert it into the created tables.

flow.py: Orchestrates the execution of tasks in the desired order. It imports and executes tasks such as creating tables and ingesting data.

queries: Folder containing SQL scripts for creating tables and inserting data.

raw_data: Folder containing raw data CSV files.

Getting Started
Clone this repository to your local machine.
Configure your database connection details in config.py.
Ensure you have the required Python packages installed (pandas, mysql-connector-python).
Place your raw data CSV files in the raw_data folder.
Modify the SQL scripts in the queries folder to match your database schema and parameter names.
Run the flow.py script to create tables and ingest data.
Usage
Run flow.py to execute tasks in the desired order: creating tables and ingesting data.
Check your database to verify that the tables have been created and data has been ingested.
Important Notes
Ensure your MySQL server is running and accessible.
Make sure to provide accurate database connection details in config.py.
Adapt SQL scripts and parameter names in the queries folder to match your specific schema and data.
Use the utility functions in utils.py to assist in tasks.
Modify the parameter values in the tasks to match your data.
Contributing
Contributions are welcome! Feel free to fork this repository, make changes, and submit pull requests.

License
This project is licensed under the MIT License.
