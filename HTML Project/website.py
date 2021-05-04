from bottle import run, route, view, static_file

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
@view('owners')
def owners():
    pass


@route('/static/<filepath:path>')
def load_static(filepath):
    return static_file(filepath, root='./static')


# start the website
run(host='0.0.0.0', port=8080, reloader=True, debug=True)
