require 'YAML'
require 'json'

my_hash = YAML::load(File.open( 'categories.yaml' ))
my_json=JSON.parse(my_hash.to_json)
File.open("categories.json", "w") { |f| f.write JSON.pretty_generate(my_json) }
