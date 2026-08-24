class GameBoard
  def initialize
    @state = []
    for i in 0...9
      @state[i] = " "
    end
  end

  def display
    puts " #{@state[0]} | #{@state[1]} | #{@state[2]}"
    puts "---+---+---"
    puts " #{@state[3]} | #{@state[4]} | #{@state[5]}"
    puts "---+---+---"
    puts " #{@state[6]} | #{@state[7]} | #{@state[8]}"
  end

  def place_piece(position, piece)
    @state[position - 1] = piece
  end

  def space_available?(position)
    @state[position - 1] == " "
  end

end
