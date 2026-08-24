class SecretCode
  def initialize(code)
    @secret_code = code
  end

  def display_code()
    p "#{@secret_code}\n"
  end
end