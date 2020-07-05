def valid_triangle?(side1, side2, side3)
  if side1 <= 0 || side2 <= 0 || side3 <= 0
    return false
  end

  triangle_arr = [side1, side2, side3]
  index_of_max = triangle_arr.index(triangle_arr.max)
  max = triangle_arr.slice!(index_of_max)
  
  triangle_arr.sum > max
end

def triangle(side1, side2, side3)
  return :invalid unless valid_triangle?(side1, side2, side3)

  if side1 == side2 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side1 == side3 || side2 == side3
    return :isosceles
  else
    return :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid

