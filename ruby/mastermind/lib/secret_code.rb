class SecretCode
  def initialize(code)
    @secret_code = code
  end

  def display_code()
    p "#{@secret_code}\n"
  end

  def evaluate(guess)
    puts "Secret Code = #{@secret_code}"
    puts "Players guess = #{guess}"
  end
end