import sqlite3
conn = sqlite3.connect('login.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE login (username char(15) NOT NULL PRIMARY KEY , password char(15) NOT NULL, password CHECK(LEN>=(4)), username CHECK(LEN>=(4)))")
conn.execute("INSERT INTO login (username,password) VALUES ('stinkywill,smellytroy')")
conn.execute("INSERT INTO login (username,password) VALUES ('amazinglucy,trashclayne)")
conn.execute("INSERT INTO login (username,password) VALUES ('YunChe,LongChen')")
conn.commit()