def crunch(string)
  letters = string.chars
  index = 1
  current_letter = letters[0]
  (letters.length - 1).times do
    if letters[index] == current_letter
      letters[index] = nil
      index += 1
    else
      current_letter = letters[index]
      index += 1
    end
  end
  letters.delete(nil)
  letters.join
end

puts crunch('ddaaiillyy dddddooooooouuubblee')
puts crunch('4444abcabccba')
puts crunch('ggggggggggggggg')
puts crunch('a')
p crunch('')