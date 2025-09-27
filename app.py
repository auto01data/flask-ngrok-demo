from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def index():
    return "Hallo ya mohammed App test 👋"

@app.get("/health")
def health():
    return jsonify(status="ok")

if __name__ == "__main__":
    # Listen on all interfaces so Docker can expose it
    app.run(host="0.0.0.0", port=5000)