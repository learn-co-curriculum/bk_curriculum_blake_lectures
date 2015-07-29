require_relative 'pikachu'
require_relative 'squirtle'
# require_relative 'pokemon'

pikachu = Pikachu.new("frantz")
squirtle = Squirtle.new("janel")
pikachu.whoami?
squirtle.whoami?
squirtle.fight
pikachu.fight(squirtle)