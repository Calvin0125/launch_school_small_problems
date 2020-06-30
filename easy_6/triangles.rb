def triangle(size)
  size.times do |i|
    puts " " * (size - (i + 1)) + "*" * (i + 1)
  end
end

triangle(5)
triangle(9)
triangle(25)