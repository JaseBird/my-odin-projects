require_relative 'game-board'
require_relative 'player'

class Game
  def initialize()
    display_header_message
    @board = GameBoard.new
    @player_one = Player.new(get_player_name(1), "x")
    @player_two = Player.new(get_player_name(2), "o")
    @current_player = @player_one
  end

  def get_player_name(player_number)
    print "Player #{player_number}, enter your name: "
    name = gets.chomp
    return name
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
  end

  def display_turn_message
    puts "-----------------------------------------"
    puts "#{@current_player.name}'s Turn #{@current_player.turn_counter}:"
    @board.display
  end

  def display_game_over_message(state)
    puts "\n========================================="
    @board.display
    
    if state == "WIN"
      puts "#{@current_player.name} has won! Congratulations!"
    elsif state == "DRAW"
      puts "Game was a draw!"
    end
  end

  def get_valid_position(current_player)
    valid_move = false
    print "\n#{current_player.name} can you please select a position:"
    
    while !valid_move
      selection = gets.chomp.to_i

      if @board.space_available?(selection)
        valid_move = true
      else
        print "Selection not valid, please try again:"
      end
    end
    return selection
  end

  def game_draw()
    
  end

  def start()
    game_state = nil

    display_start_game_message

    # main game loop
    loop do
      display_turn_message

      # ask current player for a position and return only when valid
      @board.place_piece(get_valid_position(@current_player), @current_player.piece)

      # win detection
      if @board.winner?(@current_player.piece)
        game_state = "WIN"
        break
      end

      # Detect if the board is full
      if @board.full?
        game_state = "DRAW"
        break
      end

      # increment player turn counter
      @current_player.update_turn_counter

      # Swap players
      
    end

    display_game_over_message(game_state)
  end
end

game = Game.new()
game.start


#GAME TURN LOGIC
  # 1. Display the board
  # 2. Tell current player its their turn
  # 3. Ask them for a position
  # 4. Check weather the position is valid
  # 5. If invalid -> ask again
  # 6. If valid -> place thier place
  # 7. Check whether they've won
  # 8. If not -> switch player
  # 9. Repeat for 9 turns