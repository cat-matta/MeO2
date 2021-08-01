from flask import Flask, jsonify
import pymongo
import dns
import os
from dotenv import load_dotenv
from flask_cors import CORS

load_dotenv()
Mongo_URI = os.getenv('api')
client = pymongo.MongoClient(Mongo_URI)
db = client.get_database("Env")

app = Flask(__name__)
CORS(app)

@app.route("/<something>")
def get_carbon(something):

	want=db['Info'].find_one({'name':something}) # to locate the entry

	return jsonify(want['carbon']) # get name at said entry


if __name__ == "__main__":
	app.run()