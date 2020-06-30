def fib_index_by_length(length)
  index = 1
  current = 1
  next_num = 1

  loop do
    break if current.to_s.length == length
    current, next_num = next_num, current + next_num
    index += 1
  end
  index
end

puts fib_index_by_length(1) == 1
puts fib_index_by_length(2) == 7          
puts fib_index_by_length(3) == 12         
puts fib_index_by_length(10) == 45
puts fib_index_by_length(100) == 476
puts fib_index_by_length(1000) == 4782
puts fib_index_by_length(10000) == 47847