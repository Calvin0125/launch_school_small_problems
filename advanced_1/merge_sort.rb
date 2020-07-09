def merge(array1, array2)
  index1, index2 = 0, 0
  result = []

  while array1[index1] != nil || array2[index2] != nil
    case
    when array1[index1] == nil
      result << array2[index2]
      index2 += 1
    when array2[index2] == nil
      result << array1[index1]
      index1 += 1
    when array1[index1] <= array2[index2]
      result << array1[index1]
      index1 += 1
    when array2[index2] < array1[index1]
      result << array2[index2]
      index2 += 1
    end
  end
  result
end

def merge_sort(array)
  if array.length == 1
    return array
  end

  left_half = array.slice((array.length / 2)..-1)
  right_half = array.slice(0, array.length - left_half.length)

  left_half = merge_sort(left_half)
  right_half = merge_sort(right_half)

  merge(right_half, left_half)
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

puts merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
puts merge_sort([5, 3]) == [3, 5]
puts merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
puts merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]