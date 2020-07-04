CONVERT = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

# This only works for punctuation at the end of the word, but can't think of a time when there would be
# punctuation in the middle of a number word

def word_to_digit(string)
  words = string.split
  words.map! do |word|
    clean_word = word.delete("^a-zA-Z")
    if CONVERT.has_key?(clean_word)
      CONVERT[clean_word] + word.delete("a-zA-Z")
    else
      word
    end
  end
  words.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.')

