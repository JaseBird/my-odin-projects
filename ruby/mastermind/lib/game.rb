require_relative 'secret_code'
require_relative 'computer'
require_relative 'player'

class Game
  def initialize()
    @computer = Computer.new
    @code = SecretCode.new(@computer.generate_code)
    @player = Player.new
  end

  def start()
    guess = @player.make_guess
    p guess
  end
end