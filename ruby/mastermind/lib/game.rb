require_relative 'secret_code'
require_relative 'computer'
require_relative 'player'

class Game
  computer = Computer.new
  puts computer.create_code
end