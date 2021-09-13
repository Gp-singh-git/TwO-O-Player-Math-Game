require './Game'
require './player'



player_A = Player.new
player_B = Player.new



g = Game.new(player_A, player_B)
g.start_game

