require_relative 'game-board'

class Game
  def initialize
    board = GameBoard.new
  end
end


# === TESTING ===
board.place_piece(9, "X")
#board.display
puts board.space_available?(8) #return expected: true
puts board.space_available?(9) #return expected: false