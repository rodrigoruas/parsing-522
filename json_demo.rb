# loading the JSON ruby library
require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

#JSON PARSING

#1 Open and read the file to transform the JSON into a string

json_string = File.read(filepath)

#2 Parse / Transform the JSON String into a Hash or Array

json_hash = JSON.parse(json_string)

# p json_hash

# how can I have access to the name of the second beer?


# value of the key "beers"
# p json_hash["beers"] #-> this is an array

#json_hash["beers"][1] #-> this is the second element of beers array. It's a hash


json_hash["beers"][1]["name"] #-> getting the value of the key "name"


# JSON STORING

beers = {
  title: "522 Beers",
  beers: [
    {
      name: "Asahi",
      appearance: "Pale Lager",
      origin: "Japan"
    },
    {
      name: "Guinness",
      appearance: "Stout",
      origin: "Ireland"
    },
    {
      name: "Sagres",
      appearance: "Pale",
      origin: "Portugal"
    }
  ]
}

#1 transform my ruby hash into a JSON valid string

valid_json_string = JSON.generate(beers)

# p valid_json_string

filepath = "data/new_beers.json"

File.open(filepath, "wb") do |file|
  file.write(valid_json_string)
end























