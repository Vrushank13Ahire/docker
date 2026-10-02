from flask import Flask
import os

app = Flask(__name__)


@app.route("/")
def home():
    return "App runing"


@app.route("/health")
def health():
    print("Healthy")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)
