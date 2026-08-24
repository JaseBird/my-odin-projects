class Player
  def make_guess
    guess = []
    guess_counter = 1
    valid_colours = ["blue", "green", "purple", "red", "white", "yellow"]

    while guess_counter <= 4
      print "Please make guess #{guess_counter}:"
      colour = gets.chomp.strip.downcase
      if valid_colours.include?(colour)
        guess[guess_counter - 1] = colour
        guess_counter += 1
      else
        puts "Error: colour #{colour} is not a valid colour! Please try again!"
      end
    end
    return guess
  end
end