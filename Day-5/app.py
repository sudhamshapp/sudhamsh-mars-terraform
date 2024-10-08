from flask import Flask

# Create a Flask instance
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return "Hello, World!"

# Run the application
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80)
