class Computer
  def generate_code()
    available_colours = ["blue", "green", "purple", "red", "white", "yellow"]
    code = []

    4.times do |i|
      code[i] = available_colours[rand(0..5)]
    end
    
    puts "game: computer has generate secret code"
    return code
  end

  def set_code()
    code = ["blue", "green", "red", "purple"]
    puts "game: computer has generate secret code"
    return code
  end
end