from flask import request, Flask
import json

app2 = Flask(__name__)
@app2.route('/')

def hello_world():
    return 'This is App1 :) '

if __name__ == '__main__':
    app2.run(debug=False, host='0.0.0.0')