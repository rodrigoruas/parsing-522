require 'json'
# open-uri library to open webpages =)
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/ssaunier'


#JSON PARSING

#1 Open and read the file to transform the JSON into a string

json_string = open(url).read


#2 Parse / Transform the JSON String into a Hash or Array

json_hash = JSON.parse(json_string)

# how many public repos Seb have?
p json_hash["public_repos"]



