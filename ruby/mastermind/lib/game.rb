require_relative 'computer'
require_relative 'player'
require_relative 'secret_code'

class Game
  def initialize()
    @computer = Computer.new
    @code = SecretCode.new(@computer.generate_code)
    @player = Player.new
    @turn_counter = 0
    @game_running = true
    @guess_history = Array.new(8) { Array.new(4, "-") }
  end

  def start()
    while @turn_counter <= 7 && @game_running == true
      puts "\n++++ PLAYER TURN #{@turn_counter + 1} ++++"
      guess = @player.make_guess
      exact_matches = @code.evaluate_exact_matches(guess)
      partial_matches = @code.evaluate_partial_matches(guess)
      
    @guess_history[@turn_counter] = 4.times.map do |i|
      if exact_matches[i]
        "E"
      elsif partial_matches[i]
        "P"
      else
        "-"
      end
    end

      display_game_state
      @turn_counter += 1

      if exact_matches.all?
        puts "congratultions you have guess the secret code!"
        @game_running = false
      elsif @turn_counter == 8
        puts "GAME OVER! You have run out of guesses, better luck next time!"
        @game_running = false
      end
    end

  end

  def display_game_state
    puts "\n---- GUESSES ----"
    (0..@turn_counter).each do |i|
      print " #{i + 1}:  "
      puts @guess_history[i].join(" ")
    end
    puts "-----------------"
  end
end