import sqlite3
conn = sqlite3.connect('props.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE 'props' (id INTEGER PRIMARY KEY, property_title char(20) NOT NULL, price char(20) NOT NULL, bathrooms char(11) NOT NULL, bedrooms char(11) NOT NULL, suburbs char(30) NOT NULL, pets_allowed bool NOT NULL, garage bool NOT NULL, furnished bool NOT NULL, available bool NOT NULL)")
conn.execute("INSERT INTO 'props' (id,property_title,price,bathrooms,bedrooms,suburbs,pets_allowed,garage,furnished,available) VALUES (1,'123 sesame st',150,1,50,'Muppet city','yes','no','no','yes')")
conn.execute("INSERT INTO 'props' (id,property_title,price,bathrooms,bedrooms,suburbs,pets_allowed,garage,furnished,available) VALUES (2,'456 Calluza Pl',500,4,9,'Waiheke','no','yes','yes','no')")
conn.commit()