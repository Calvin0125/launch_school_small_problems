def sum(num)
  return nil unless num.instance_of?(Integer) && num > 0
  num.to_s.chars.map(&:to_i).sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)