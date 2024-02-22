# game.rb
require_relative 'player'
require_relative 'turn'

class Game
  attr_reader :players, :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def start_game
    puts "Let's start the math game!"
    until game_over?
      turn = Turn.new(@current_player)
      turn.play_turn
      switch_players
    end
    end_game
  end

  private

  def switch_players
    @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end

  def end_game
    winner = @players.find { |player| player.lives > 0 }
    loser = (@players - [winner]).first

    puts "GAME OVER"
    puts "#{winner.name} wins with a score of #{winner.score}/3"
    puts "#{loser.name}'s final score: #{loser.score}/3"
    puts "Goodbye!"
  end
end