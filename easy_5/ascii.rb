def ascii(string)
  string.split('').map { |char| char.ord }.sum
end

puts ascii('Four score')
puts ascii('Launch School')
puts ascii('a')
puts ascii('')