def multiply_pairs(array1, array2)
  array1.product(array2).map {|arr| arr.reduce(:*)}.sort
end

puts multiply_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
