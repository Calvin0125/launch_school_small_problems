def multiply(array1, array2)
  result = []
  array1.length.times do |i|
    result << array1[i] * array2[i]
  end
  result
end


#This one is a bit confusing to read but is short
def multiply_zip(array1, array2)
  array1.zip(array2).map { |arr| arr.reduce(:*) }
end
puts multiply([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_zip([3, 5, 7], [9, 10, 11])