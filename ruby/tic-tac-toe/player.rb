class Player
  attr_reader :name
  attr_reader :piece

  def initialize(name, piece)
    @name = name
    @piece = piece
  end
end