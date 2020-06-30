def half(array)
  if array.length.odd?
    half = array.length / 2 + 1
  else
    half = array.length / 2
  end

  second_half = array.slice!(half..-1)
  [array, second_half]
end

puts half([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts half([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts half([5]) == [[5], []]
puts half([]) == [[], []]