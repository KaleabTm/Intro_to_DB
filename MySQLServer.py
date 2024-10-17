import mysql.connector

def create_database():
    try:
        mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="password",
        )
        if mydb.is_connected():
            cursor = mydb.cursor
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
    except:
        print("Error connecting to database")