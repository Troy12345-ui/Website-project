import sqlite3
from bottle import run, route, view, static_file, request, template, debug, error, get, redirect

@route('/')
@view('index')
def index():
    pass

@route('/_property')
@view('_property')
def _property():
    pass

@route('/_property')
def _property():
    conn = sqlite3.connect('props.db')
    c = conn.cursor()
    c.execute("SELECT id, property_title, price, bathrooms, bedrooms, suburbs, pets_allowed, garage, furnished, available FROM props")
    results = c.fetchall()
    c.close()
    #just making one row, cant be assed making three per row
    return template('_property.tpl', rows=results)

@route('/admin')
@view('admin')
def admin():
    pass

@route('/about')
@view('about')
def about():
    pass

@route('/contact')
@view('contact')
def contact():
    pass

@route('/landlords')
@view('landlords')
def landlords():
    pass

@route('/tenants')
@view('tenants')
def tenants():
    pass


@route('/username',)
@view('username')
def username():
    pass

@route('/new')
@view('new')
def new():
    pass

@route('/del_prop')
@view('del_prop')
def del_prop():
    pass

@route('/owners')
@view('owners')
def owners():
    pass

@route('/admin')
@view('admin')
def admin():
    return dict(incorrect="none")

@route('/images/<filepath:path>')
def load_images(filepath):
    return static_file(filepath, root='./images')

@route('/static/<filepath:path>')
def load_static(filepath):
    return static_file(filepath, root='./static')

def check_login(username,password):
    conn = sqlite3.connect('login.db')
    c = conn.cursor()
    c.execute("SELECT username FROM login WHERE username LIKE ? AND password LIKE ?", (username, password))
    result = c.fetchall()

    # Check if login details are in the login database
    if result:
        print("Successful Login Recieved")
        conn.commit()
        c.close()
        return True
    else:
        print("Invalid Login")
        c.close()
        return False

@route('/admin', method='POST')
def do_login():
    username = request.forms.get("username").strip()
    password = request.forms.get("password").strip()

    # Show 'incorrect' message if password is incorrect
    if check_login(username, password):
        return redirect('/owners')
    else:
        return template('admin.tpl', incorrect="block")

@route('/owners')
def owners():
    conn = sqlite3.connect('props.db')
    c = conn.cursor()
    c.execute("SELECT id, property_title, price, bathrooms, bedrooms, suburbs, pets_allowed, garage, furnished, available FROM props")
    results = c.fetchall()
    c.close()
    #find out how to select the one specific prop id
    return template('owners.tpl', rows=results, propId=results)


@route('/del_prop', method="GET")
def del_prop():
        if request.GET.get('delprop','').strip():
            delhome = request.GET.get('id').strip()
            conn = sqlite3.connect('props.db')
            print('delhome:', delhome)
            c = conn.cursor()
            c.execute("DELETE FROM props WHERE id like '{}'".format(delhome))
            conn.commit() 
            c.close()
            return '<p> the wish {} has Been deleted</p> <form action="/owners"> <button type="submit">Back to admin page</button>'.format(delhome)
        else:
            conn = sqlite3.connect('props.db')
            c = conn.cursor()
            c.execute("SELECT id FROM props")
            #for some stupid reason saves a list full of tuples
            k = c.fetchall()
            print('k:', k)
            return template('del_prop.tpl', ids=k)
            

@route('/new', method='GET')
def new_item():
    if request.GET.get('save','').strip():
        new_title = request.GET.get('property_title', '').strip()
        new_price = request.GET.get('price', '').strip()
        new_bathroom = request.GET.get('bathrooms', '').strip()
        new_bedroom = request.GET.get('bedrooms', '').strip()
        new_suburb = request.GET.get('suburbs', '').strip()

        pets = request.GET.get('pets_allowed','').strip()
        if pets == 'pets_allowed':
            pets = 'yes'
        else:
            pets = 'no'
        is_garage = request.GET.get('garage','').strip()
        if is_garage == 'garage':
            is_garage = 'yes'
        else:
            is_garage = 'no'
        is_furnished = request.GET.get('furnished','').strip()
        if is_furnished == 'furnished':
            is_furnished = 'yes'
        else:
            is_furnished = 'no'
        
        available = request.GET.get('available','').strip()
        conn = sqlite3.connect('props.db')
        c = conn.cursor()
        c.execute("INSERT INTO props (property_title,price,bathrooms,bedrooms,suburbs,pets_allowed,garage,furnished,available) VALUES (?,?,?,?,?,?,?,?,?)", (new_title,new_price,new_bathroom,new_bedroom,new_suburb,pets,is_garage,is_furnished,available))
        new_id = c.lastrowid
        conn.commit() 
        c.close()
        return '<p>The new property was inserted into the database, the ID is %s</p> <form action="/owners"> <button type="submit">Back to admin page</button>' % new_id
        
    else:
        return template('new.tpl')

@route('/edit/:propId', method='GET')
def edit_item(propId):
    #get edithome before anything, do this by doing that removal of the tuple lsit thing again.
    if request.GET.get('correct','').strip():
        prop_name = request.GET.get('property_title','').strip()
        prick = request.GET.get('price','').strip()
        bathroom = request.GET.get('bathrooms','').strip()
        bedroom = request.GET.get('bedrooms','').strip()
        suburb = request.GET.get('suburbs','').strip()
        pets_in = request.GET.get('pets_in2','').strip()
        if pets_in == 'pets_in2':
                pets_in = 'yes'
        else:
                pets_in = 'no'

        cars_allowed = request.GET.get('cars2_allowed','').strip()
        if cars_allowed == 'cars2_allowed':
                cars_allowed = 'yes'
        else:
                cars_allowed = 'no'

        chairs = request.GET.get('chairs2','').strip()
        if chairs  == 'chairs2':
                chairs = 'yes'
        else:
                chairs = 'no'

        avavs = request.GET.get('available','').strip()

        conn = sqlite3.connect('prop.db')
        c = conn.cursor()
        c.execute("UPDATE props SET property_title = ? price = ? bathrooms = ? bedrooms = ? suburbs = ? pets_allowed = ? garage = ? furnished = ? available = ? WHERE id LIKE ?", (prop_name, prick, bathroom, bedroom, suburb, pets_in, cars_allowed, chairs, avavs, propId))
        conn.commit()
        return '<p>The item number %s was successfully updated</p> <form action="/owners"> <button type="submit">Back to admin page</button>' % edithome
    else:
        conn = sqlite3.connect('props.db')
        c = conn.cursor()
        c.execute("SELECT property_title FROM props WHERE id LIKE '{}'" .format(edithome))
        cur1_data = c.fetchone()
        c.execute("SELECT price FROM props WHERE id LIKE '{}'" .format(edithome))
        cur_data = c.fetchone()
        c.execute("SELECT bathrooms FROM props WHERE id LIKE '{}'" .format(edithome))
        cur2_data = c.fetchone()
        c.execute("SELECT bedrooms FROM props WHERE id LIKE '{}'" .format(edithome))
        cur3_data = c.fetchone()
        c.execute("SELECT suburbs FROM props WHERE id LIKE '{}'" .format(edithome))
        cur4_data = c.fetchone()
        W = edithome
        return template('edit_wish.tpl', old=cur_data, old2=cur2_data, old3=cur3_data, old4=cur4_data, old1=cur1_data, propId=propId)


# start the website
run(host='0.0.0.0', port=8080, reloader=True, debug=True)


