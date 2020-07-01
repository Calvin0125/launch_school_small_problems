def interleave(array1, array2)
  result = []
  array1.length.times do |i|
    result << array1[i] << array2[i]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c'])