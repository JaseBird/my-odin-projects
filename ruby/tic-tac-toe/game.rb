require_relative 'game-board'
require_relative 'player'

class Game
  def initialize()
    @board = GameBoard.new
    @player_one = Player.new(get_player_name(1), "x")
    @player_two = Player.new(get_player_name(2), "o")
  end

  def get_player_name(player_number)
    puts "Player #{player_number}, enter your name: "
    name = gets.chomp
  end
  
  def start()
    display_player_names
  end


  def display_player_names
    puts "#{@player_one.name} is playing #{@player_one.piece}"
    puts "#{@player_two.name} is playing #{@player_two.piece}"
  end
end

game = Game.new()
game.start

# === TESTING ===
#board.place_piece(9, "X")
#board.display
#puts board.space_available?(8) #return expected: true
#puts board.space_available?(9) #return expected: false
#
#  