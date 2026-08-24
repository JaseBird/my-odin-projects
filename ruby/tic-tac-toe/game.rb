require_relative 'game-board'
require_relative 'player'

class Game
  def initialize()
    display_header_message
    @board = GameBoard.new
    @player_one = Player.new(get_player_name(1), "x")
    @player_two = Player.new(get_player_name(2), "o")
  end

  def get_player_name(player_number)
    puts "Player #{player_number}, enter your name: "
    name = gets.chomp
  end

  def display_header_message
    puts "========================================="
    puts "         WELCOME TO TIC-TACK-TOE         "
    puts "========================================="
  end

  def display_start_game_message
    puts "-----------------------------------------"
    puts "#{@player_one.name} is playing #{@player_one.piece}"
    puts "#{@player_two.name} is playing #{@player_two.piece}"
    puts "\nHave a good game!"
    puts "-----------------------------------------"
  end

  def get_player_selection(player)
    puts ""
  end

   def start()
    display_start_game_message

    # 1. Display the board
    # 2. Tell current player its their turn
    # 3. Ask them for a position
    # 4. Check weather the position is valid
    # 5. If invalid -> ask again
    # 6. If valid -> place thier place
    # 7. Check whether they've won
    # 8. If not -> switch player
    # 9. Repeat for 9 turns
  end
end

game = Game.new()
game.start