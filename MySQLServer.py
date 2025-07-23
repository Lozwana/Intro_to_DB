# MySQLServer.py

import mysql.connector
from mysql.connector import errorcode

def create_database():
    """
    Creates the alx_book_store database if it doesn't exist
    """
    try:
        # Connect to MySQL server without specifying a database
        connection = mysql.connector.connect(
            host="localhost",
            user="happyness",
            password=""
        )
        cursor = connection.cursor()

        # Create database if not exists
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Access denied - check your username/password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Error: Database doesn't exist")
        else:
            print(f"Error: {err}")
    finally:
        # Close connections in reverse order of creation
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_database()
# This script is used to create a MySQL database named 'alx_book_store'.
# It connects to the MySQL server using the specified user credentials and creates the database if it does not already exist.