# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'

data = JSON.parse('[{"name":"ruby","details":"the language of ballers"},
  {"name":"python","details":"a snaky language"},
  {"name":"javascript","details":"JUNK!"},
  {"name":"haskell","details":"check out my neckbeard"}]')
data.each do |row|
  Language.create(row)
end