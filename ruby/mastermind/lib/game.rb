require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'secret_code'

class Game
  def initialize()
    @computer = Computer.new
    @code = SecretCode.new(@computer.generate_code)
    @board = Board.new
    @player = Player.new
  end

  def start()
    @board.display
  end
end