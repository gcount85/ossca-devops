# Import the Flask module that has been installed.
from flask import Flask

# Creating a new "app" by using the Flask constructor. Passes __name__ as a parameter.
app = Flask(__name__)

# Annotation that allows the function to be hit when the specific HTTP request is performed.


@app.route('/')
def home():
    return 'index page'


@app.route('/hello')
def hello():
    return {"msg": "hello, ossca"}


# Main driver function
if __name__ == '__main__':
    # run() method of Flask class runs the application
    # on the local development server.
    # app.debug = True
    app.run(host='localhost', port='5000')
