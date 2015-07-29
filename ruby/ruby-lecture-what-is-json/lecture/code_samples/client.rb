require 'pry'
require 'pry-nav'
require 'typhoeus' #must gem install typhoeus
require 'json'

# response = Typhoeus.get("192.168.2.2:4567/")

response_json = Typhoeus.get("192.168.2.2:4567/jsonified")
parsed = JSON.parse(response_json.body)
binding.pry
