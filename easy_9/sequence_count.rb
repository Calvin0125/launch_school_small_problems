def sequence(count, start_num)
  sequence = []
  1.upto(count) { |i| sequence << i * start_num }
  sequence
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []