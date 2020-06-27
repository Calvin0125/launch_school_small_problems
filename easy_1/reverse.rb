def reverse(string)
  return nil unless string.instance_of?(String)
  string.split(" ").reverse.join(" ")
end
  
puts reverse('hello world')
puts reverse('everything is awesome')
puts reverse('')