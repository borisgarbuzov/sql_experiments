#!/usr/bin/python

import psycopg2

try:
    connection = psycopg2.connect(database="boris_db", 
                                  user="postgres", 
                                  password="Needajob1", 
                                  host="database-1-postgres.ctjowhpkuywk.us-east-2.rds.amazonaws.com", 
                                  port="5432")

    cursor = connection.cursor()
    # Print PostgreSQL Connection properties
    print ( connection.get_dsn_parameters(),"\n")

    # Print PostgreSQL version
    cursor.execute("SELECT version();")
    record = cursor.fetchone()
    print("You are connected to - ", record,"\n")

except (Exception, psycopg2.Error) as error :
    print ("Error while connecting to PostgreSQL", error)
finally:
    # closing database connection.
        if(connection):
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")