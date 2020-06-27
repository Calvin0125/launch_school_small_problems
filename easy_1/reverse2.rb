def reverse(string)
  return nil unless string.instance_of?(String)
  string.split.map {|word| word.length > 4? word.reverse : word}.join(" ")
end

puts reverse('Professional')
puts reverse('Hello World')
puts reverse('walk around the block')