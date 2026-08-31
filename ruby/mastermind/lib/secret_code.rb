class SecretCode
  def initialize(code)
    @secret_code = code
    @remaining_codes = @secret_code.dup
  end

  def display_code()
    puts "#{@secret_code}\n"
  end

  def evaluate_exact_matches(guess)
    remaining_positions = []
    @exact_matches = [false, false, false, false]

    # Check for exact matching colours
    4.times do |i|
      if @remaining_codes[i].eql?(guess[i])
        remaining_positions << i
        @exact_matches[i] = true
      end
    end

    # Delete exact matching colours from array
    remaining_positions.reverse.each do |i|
      @remaining_codes.delete_at(i)
    end
    return @exact_matches
  end

  def evaluate_partial_matches(guess)
    partial_matches = [false, false, false, false]

    # Check for correct colour but in wrong position
    4.times do |i|
      unless @exact_matches.include?(i)
        if @remaining_codes.include?(guess[i])
          index = guess.index(guess[i])
          partial_matches[index] = true
        end
      end
    end
    return partial_matches
  end
end