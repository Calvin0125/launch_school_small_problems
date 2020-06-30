def new_merge(array1, array2)
  (array1 + array2).uniq
end

puts new_merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]