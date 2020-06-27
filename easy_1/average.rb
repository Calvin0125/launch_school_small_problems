def average(array)
  return nil unless array.instance_of?(Array)
  array.sum / array.length
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])