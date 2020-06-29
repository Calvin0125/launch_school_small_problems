def cleanup(string)
  string.gsub!(/[^a-zA-Z]+/, ' ')
  string.gsub!(/\s+/, ' ')
end

puts cleanup("---what's my +&*(line?")
puts cleanup("h5l2lo 234wor54ld")
puts cleanup("hello 235 world")