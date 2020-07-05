def sum_square_difference(n)
  square_of_sum = 0
  sum_of_squares = 0
  1.upto(n) do |i|
    square_of_sum += i
    sum_of_squares += i**2
  end
  square_of_sum = square_of_sum**2
  square_of_sum - sum_of_squares
end

puts sum_square_difference(3)
puts sum_square_difference(10)
puts sum_square_difference(1)
puts sum_square_difference(100)