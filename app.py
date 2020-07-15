from flask import Flask
app = Flask(__name__)

@app.route('/')
def maintenance_announcement():
    return """
    <h1 style='color: green;'>Currently undergoing maintenance.</h1>
    <p>Check back soon for our Shiny New Features (SNF)!</p>
    """