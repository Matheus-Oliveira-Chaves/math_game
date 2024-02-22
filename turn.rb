# turn.rb
require_relative 'question'

class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def play_turn
    puts "#{@player.name}: #{@question.display}"
    print "> "
    player_answer = gets.chomp.to_i

    if player_answer == @question.answer
      puts "Correct!"
      @player.correct_answer
    else
      puts "Seriously? No!"
      @player.lose_life
    end

    @player.display_status
    puts "--- New Turn ---"
  end
end
