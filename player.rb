# player.rb
class Player
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def lose_life
    @lives -= 1
  end

  def correct_answer
    @score += 1
  end

  def display_status
    puts "#{@name}: #{@score}/3"
  end
end