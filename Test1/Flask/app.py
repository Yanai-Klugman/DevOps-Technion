from flask import Flask, jsonify
import requests

app = Flask(__name__)

url = 'https://api.chucknorris.io/jokes/random'

@app.route('/')
def get_joke():
    response = requests.get(url)
    joke = response.json().get('value')
    return jsonify(joke=joke)

if __name__ == '__main__':
    app.run(debug=True)
