def oddities(array)
  odd_array = []
  array.each_with_index {|value, index| odd_array << value if index.even?}
  odd_array
end

p oddities([2,3,4,5,6])
p oddities([1,2,3,4,5,6])
p oddities(['abc', 'def'])

