
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Autoscaling Demo Running"

@app.route("/load")
def load():
    for i in range(10000000):
        x = i*i
    return "CPU Load Generated"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
