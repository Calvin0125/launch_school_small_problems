def leading_substrings(string)
  substrings = []
  substring_length = 1
  while substring_length <= string.length
    substrings << string[0, substring_length]
    substring_length += 1
  end
  substrings
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']