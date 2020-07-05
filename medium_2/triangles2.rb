def triangle(angle1, angle2, angle3)
  triangle = [angle1, angle2, angle3]

  case
  when triangle.sum != 180, triangle.any? { |angle| angle <= 0 }
    :invalid
  when triangle.any? { |angle| angle == 90 }
    :right
  when triangle.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid