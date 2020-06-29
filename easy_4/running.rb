def running_total(numbers)
  new_numbers = []
  numbers.length.times do |i|
    if i == 0
      new_numbers[i] = numbers[i]
    else
      new_numbers << numbers[i] + new_numbers[i - 1]
    end
  end
  new_numbers
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

# solution is much shorter
# putting here for reference

def efficient_running_total(array)
  sum = 0
  array.map { |value| sum += value }
end