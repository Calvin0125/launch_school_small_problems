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

def palindromes(string)
  palindromes = []
  sub_strings = substrings(string)
  sub_strings.each do |string|
    if string.length > 1 && string == string.reverse
      palindromes << string
    end
  end
  palindromes
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


