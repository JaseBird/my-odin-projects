require_relative 'computer'
require_relative 'player'
require_relative 'secret_code'

class Game
  def initialize()
    @computer = Computer.new
    @code = SecretCode.new(@computer.set_code)
    @player = Player.new
  end

  def start()
    @code.display_code
    guess = @player.make_guess
    exact_matches = @code.evaluate_exact_matches(guess)
    partial_matches = @code.evaluate_partial_matches(guess)

    #DEBUG
    puts "Exact matches: #{exact_matches}"
    puts "Partial matches: #{partial_matches}"
  end
end