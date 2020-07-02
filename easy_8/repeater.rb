def repeater(string)
  string.chars.map { |letter| letter * 2 }.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''