from bottle import route, run, template, error

@error(404)
def error404(error):
	return 'Nothing here, sorry'

@route('/')
def index():
	return template('<b>Hello {{name}}</b>!', name='Home')

@route('/hello')
@route('/hello/<name>')
def hello(name="world"):
    return '<h1>Hello %s!</h1>' % name.title()

@route('/todo')
def todo():
	return "ruk ja bhai"

run(host='0.0.0.0', port=8080)
