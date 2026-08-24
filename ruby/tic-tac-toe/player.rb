class Player
  attr_reader :name
  attr_reader :piece
  attr_reader :turn_counter

  def initialize(name, piece)
    @name = name
    @piece = piece
    @turn_counter = 1
  end

  def update_turn_counter()
    @turn_counter += 1
  end
end