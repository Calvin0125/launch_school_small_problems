def new_reverse!(array)
  front = 0
  back = -1
  
  loop do
    break if front == array.length / 2
    array[front], array[back] = array[back], array[front]
    front += 1
    back -= 1
  end
  array
end

array1 = [1, 2, 3, 4]
result = new_reverse!(array1)
p array1
puts result.object_id == array1.object_id

array2 = %w(a b c d e)
result = new_reverse!(array2)
p array2
puts result.object_id == array2.object_id

def new_reverse(array)
  result = []
  array.length.times do |i|
    result.unshift(array[i])
  end
  result
end

array1 = [1, 2, 3, 4]
result = new_reverse(array1)
p array1
p result
puts result.object_id == array1.object_id

array2 = %W(a b c d e)
result = new_reverse(array2)
p array2
p result
puts result.object_id == array2.object_id