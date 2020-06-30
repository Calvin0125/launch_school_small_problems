def new_include?(array, value)
  array.each { |item| return true if item == value}
  return false
end

puts new_include?([1,2,3,4,5], 3) == true
puts new_include?([1,2,3,4,5], 6) == false
puts new_include?([], 3) == false
puts new_include?([nil], nil) == true
puts new_include?([], nil) == false