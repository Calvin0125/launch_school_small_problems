def digit_list(num)
  return nil unless num.instance_of?(Integer) && num > 0
  num.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list('12345')
p digit_list(0)
p digit_list(7)