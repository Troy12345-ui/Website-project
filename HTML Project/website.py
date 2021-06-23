import sqlite3
from bottle import run, route, view, static_file, request, template, debug, error, get, redirect

@route('/')
@view('index')
def index():
    pass

@route('/_property')
@view('_property')
def _property():
    conn = sqlite3.connect('props.db')
    c = conn.cursor()
    c.execute("SELECT property_title, price, bathrooms, bedrooms, suburbs, pets_allowed, garage, furnished, available FROM props")
    answers = c.fetchall()
    c.close()
    return template('_property.tpl', planes=answers)

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
    c.execute("SELECT property_title, price, bathrooms, bedrooms, suburbs, pets_allowed, garage, furnished, available FROM props")
    results = c.fetchall()
    c.close()
    return template('owners.tpl', rows=results)


@route('/del_prop', method="GET")
def del_prop():
        if request.GET.get('delprop','').strip():
            delhome = request.GET.get('property_title', '').strip()
            conn = sqlite3.connect('props.db')
            c = conn.cursor()
            c.execute("DELETE FROM props WHERE property_title like '{}'".format(delhome))
            conn.commit() 
            c.close()
            return '<p> the wish %s has Been deleted</p>'.format(delhome)
            return template('owners.tpl')
        else:
            conn = sqlite3.connect('props.db')
            c = conn.cursor()
            c.execute("SELECT property_title FROM props")
            k = c.fetchall()
            c.close()
            return template('del_prop.tpl', proptitle=k)


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
        return '<p>The new property was inserted into the database, the ID is %s</p>' % new_id
        return template('owners.tpl')
    else:
        return template('new.tpl')

@route('/edit/:propId', method='GET')
def edit_item(propId):

    if request.GET.get('save','').strip():
        edithome = request.GET.get('property_title','').strip()
        prick = request.GET.get('price','').strip()
#index using prop title to select entire row to then edit
        conn = sqlite3.connect('prop.db')
        c = conn.cursor()
        c.execute("UPDATE props SET price = ? bathrooms = ? bedrooms = ? suburbs = ? pets_allowed = ? garage = ? furnished = ? available = ? WHERE id LIKE ?", (edit, status, wishId))
        conn.commit()
        return '<p>The item number %s was successfully updated</p>' % wishId
    else:
        conn = sqlite3.connect('props.db')
        c = conn.cursor()
        c.execute("SELECT property_title,price,bathrooms,bedrooms,suburbs,pets_allowed,garage,furnished,available FROM props WHERE property_title LIKE '{}'" .format(edithome))
        cur_data = c.fetchone()
        W = edithome
        return template('edit_wish.tpl', old=cur_data, wishId=W)


# start the website
run(host='0.0.0.0', port=8080, reloader=True, debug=True)


