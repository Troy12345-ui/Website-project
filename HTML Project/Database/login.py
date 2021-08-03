import sqlite3
conn = sqlite3.connect('login.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE 'login' (id INTEGER PRIMARY KEY, username char(15) NOT NULL, password char(15) NOT NULL)")
conn.execute("INSERT INTO 'login' (username,password) VALUES ('stinkywill','smellytroy')")
conn.execute("INSERT INTO 'login' (username,password) VALUES ('amazinglucy','trashclayne')")
conn.execute("INSERT INTO 'login' (username,password) VALUES ('YunChe','LongChen')")
conn.commit()
    <label>Suburb
    <select id="suburbs" name="suburbs">
        %suburbs = ["Manakau","Epsom","One Tree Hill","Howick","Pakuranga","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"] 
            %for i in suburbs:
                <option value="{{i}}" name="{{i}}">{{i}}</option>
            %end

    </select>
    </label>
    <br>