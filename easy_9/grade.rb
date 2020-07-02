def get_grade(grade1, grade2, grade3)
  average = ((grade1 + grade2 + grade3) / 3.0).round
  case 
  when average >= 90 && average <= 100
    'A'
  when average >= 80 && average < 90
    'B'
  when average >= 70 && average < 80
    'C'
  when average >= 60 && average < 70
    'D'
  else
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"