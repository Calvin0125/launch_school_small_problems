def multisum(num)
  multiples = []
  i = 1
  while i <= num
    multiples << i if i % 3 == 0 || i % 5 == 0
    i += 1
  end
  multiples.sum
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(20)
puts multisum(1000)
