def sum_of_sums(numbers)
  running_total = 0
  sum = 0

  numbers.each do |number|
    sum += (running_total + number)
    running_total += number
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) 
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35