from bottle import run, route, view, static_file, request, template, debug, error

@route('/')
@view('index')
def index():
    pass

@route('/_property')
@view('_property')
def _property():
    pass

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

@route('/owners')
def owners():
    conn = sqlite3.connect('login.db')
    c = conn.cursor()
    c.execute("SELECT username, password")
    login_deets = c.fetchall()
    print(login_deets)
    return template('owners', login_deets=login_deets)

@route('/login', method='POST')
def do_login():
    global username
    username = request.forms.get('username').strip()
    password = request.forms.get('password').strip()

    # Show 'incorrect' message if password is incorrect
    if check_login(username, password):
        return redirect('/')
    else:
        return template('admin', incorrect="block")

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


@route('/props')
def prop_list():
    conn = sqlite3.connect('props.db')
    c = conn.cursor()
    c.execute("SELECT id, property_title,price, bathrooms, bedrooms, suburbs, r_or_c, pets_allowed, garage, furnished  FROM props WHERE available LIKE '1'")
    result = c.fetchall()
    c.close()
    return template('owners', rows=result)

@route('/new', method='GET')
def new_item():
    if request.GET.get('save','').strip():
        new = request.GET.get('wish', '').strip()
        conn = sqlite3.connect('props.db')
        c = conn.cursor()
        c.execute("INSERT INTO bucket (wish,status) VALUES (?,?)", (new,1))
        new_id = c.lastrowid
        conn.commit()
        c.close()
        return '<p>The new wish was inserted into the database, the ID is %s</p>' % new_id
    else:
        return template('new.tpl')

@route('/login', method="POST")
def check_login():
    pass


# start the website
run(host='0.0.0.0', port=8080, reloader=True, debug=True)


