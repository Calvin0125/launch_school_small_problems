def featured(num)
  if num.to_s.length > 10
    return "There are no more featured numbers."
  end

  (num + 1).upto(9_999_999_999) do |num|
    if (num % 7 == 0 && num.odd?) &&
       (num.to_s.chars.uniq == num.to_s.chars)
       return num
    end
  end

  return "There are no more featured numbers."
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) 

       
