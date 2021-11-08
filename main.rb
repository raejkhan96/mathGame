require './player.rb'
require './game.rb'

# pass in names of players to class
p1 = Player.new('John')
p2 = Player.new('Jane')
# pass in player 1 and 2
game1 = Game.new(p1, p2)

# play game
game1.play_game

