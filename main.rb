# main.rb
require_relative 'game'
require_relative 'player'

player1 = Player.new("p1")
player2 = Player.new("p2")

game = Game.new(player1, player2)
game.start_game
