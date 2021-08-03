import sqlite3
con = sqlite3.connect('newlogin.db')
con.execute("CREATE TABLE login (id INTEGER PRIMARY KEY, username char(15) NOT NULL, password char(15) NOT NULL, password CHECK(LEN>=(4)), username CHECK(LEN>=(4))))")
con.execute("INSERT INTO login (username,password) VALUES ('stinkywill','smellytroy')")
con.commit()

    <label>Suburb
    <select id="suburbs" name="suburbs">
        %suburbs = ["Manakau","Epsom","One Tree Hill","Howick","Pakuranga","Henderson","Botany Downs","Glen Innes","Glendowie","Ellerslie","Papakura","St Johns","Grey Lynn","Remuera","Mt Wellington","Meadowbank","St Heliers"] 
            %for i in suburbs:
                <option value="{{i}}" name="{{i}}">{{i}}</option>
            %end

    </select>
    </label>
    <br>