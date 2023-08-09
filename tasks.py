import mysql.connector
from config import DB_CONFIG, QUERIES_PATH
from utils import read_sql_script


def create_tables():
    try:
        with mysql.connector.connect(**DB_CONFIG) as conn:
            cursor = conn.cursor()

            table_scripts = ['create_table_users.sql', 'create_table_friends.sql', 'create_table_posts.sql', 'create_table_reactions.sql']

            for script in table_scripts:
                query = read_sql_script(f'{QUERIES_PATH}/{script}')
                cursor.execute(query)

            conn.commit()
    except Exception as e:
        print(f"Error creating tables: {e}")


def ingest_data():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()

        data_scripts = ['insert_into_users.sql', 'insert_into_friends.sql', 'insert_into_posts.sql',
                        'insert_into_reactions.sql']

        for script in data_scripts:
            query = read_sql_script(f'{QUERIES_PATH}/{script}')
            cursor.execute(query)

        conn.commit()
    except Exception as e:
        print(f"Error ingesting data: {e}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()
