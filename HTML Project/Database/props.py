import sqlite3
conn = sqlite3.connect('props.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE 'props' (id INTEGER PRIMARY KEY, property_title char(100) NOT NULL, price char(100) NOT NULL, bathrooms char(100) NOT NULL, bedrooms char(100) NOT NULL, suburbs char(100) NOT NULL, pets_allowed bool NOT NULL, garage bool NOT NULL, furnished bool NOT NULL, available bool NOT NULL)")
conn.execute("INSERT INTO 'props' (property_title,price,bathrooms,bedrooms,suburbs,pets_allowed,garage,furnished,available) VALUES ('123 sesame st',150,1,50,'Muppet city',1,0,0,1)")
conn.execute("INSERT INTO 'props' (property_title,price,bathrooms,bedrooms,suburbs,pets_allowed,garage,furnished,available) VALUES ('456 Calluza Pl',500,4,9,'Waiheke',0,1,1,1)")
conn.commit()