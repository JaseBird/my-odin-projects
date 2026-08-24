class Computer
  def create_code()
    available_colours = ["Blue", "Green", "Purple", "Red", "White", "Yellow"]
    code = []

    4.times do |i|
      code[i] = available_colours[rand(0..5)]
    end
    
    return code
  end
end