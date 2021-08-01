from flask import Flask
from flask_cors import CORS
import pymongo
import dns
import os
from dotenv import load_dotenv

load_dotenv()

Mongo_URI = os.getenv('apiuri')
client = pymongo.MongoClient(Mongo_URI)

# client = pymongo.MongoClient('mongodb+srv://<NAME>:<PASS>@cluster0.bxtpa.mongodb.net/myFirstDatabase?retryWrites=true&w=majority')

data = client.get_database("")## Access our collection


app = Flask(__name__)
CORS(app)


@app.route("/<item>")
def helloWorld():
  return data[item]

