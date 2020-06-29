def letter_counter(string)
  
  words = string.gsub(/[^a-z\s]/i, '').split
  sizes = Hash.new(0)
  words.each { |word| sizes[word.length] += 1 }
  sizes
end

p letter_counter('Four score and seven.')
p letter_counter('Hey diddle diddle, the cat and the fiddle!')
p letter_counter("What's up doc?")
p letter_counter('')

