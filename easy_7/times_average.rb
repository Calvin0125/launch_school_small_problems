def times_average(numbers)
  average = (numbers.reduce(:*) / numbers.length.to_f)
  puts "The result is #{format('%.3f', average)}"
end

times_average([3, 5])
times_average([6])
times_average([2, 5, 7, 11, 13, 17])