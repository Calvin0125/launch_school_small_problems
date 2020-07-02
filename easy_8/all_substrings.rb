def substrings(string)
  substrings = []
  index = 0
  while index < string.length
    substring_length = 1
    while substring_length + index <= string.length
      substrings << string[index, substring_length]
      substring_length += 1
    end
    index += 1
  end
  substrings
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]