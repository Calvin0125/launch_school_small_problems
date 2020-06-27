def bonus(num, bool)
  return nil unless num.instance_of?(Integer) && num > 0
  bool ? (num / 2) : 0
end

puts bonus(2800, true)
puts bonus(1000, false)
puts bonus(50000, true)