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

  def winner?(piece)
    # check whether this piece has a winning combination
    winning_combinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

    winning_combinations.any? do |combination|
      combination.all? do |position|
        @state[position] == piece
      end
    end
  end

  def full?()
    @state.none?{ |position| position == " " }
  end
end
