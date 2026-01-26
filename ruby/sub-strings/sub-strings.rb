# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second
# argument. It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(strings, dictionary)
  result = Hash.new(0)
  words = strings.downcase.split(/\W+/)

  dictionary.each do |substring|
    substring = substring.downcase

    words.each do |w|
      if w.include?(substring)
        result[substring] += 1
      end
    end
  end
  return result
end

puts substrings("Howdy I am Below you and I want to go, I will be part of something big!", dictionary)

# Next, make sure your method can handle multiple words
# Recall how to turn strings into arrays and arrays into strings.