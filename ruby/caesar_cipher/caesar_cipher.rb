def caesar_cipher(string, offset)
  # Take a string and shift it by offset in the alphabet, return the new string
  # Don’t forget to wrap from z to a
  # Don’t forget to keep the same case
  # 65 = A => 90 => Z, 97 = a => 122 = z

  puts "Orginal string: " + string

  # if string contains data
  unless string.empty?
    string.each_char.map do |char|
      case char
      when 'a'..'z'
        ((char.ord - 'a'.ord + offset) % 26 + 'a'.ord).chr
      when 'A'..'Z'
        ((char.ord - 'A'.ord + offset) % 26 + 'A'.ord).chr
      else
        char
      end
    end.join
  end
end

puts "Encription: " + caesar_cipher("azAZ !?", 5)