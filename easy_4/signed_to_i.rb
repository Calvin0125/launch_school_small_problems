DIGITS = {
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '0' => 0
}

def signed_to_i(num)
  sign = num.slice!(0) unless num[0] =~ /[0-9]/
  if sign == '-'
    sign = -1
  else
    sign = 1
  end

  num = num.chars.map { |digit| DIGITS[digit] }
  value = 0
  num.each {|digit| value = 10 * value + digit}
  value * sign
end

puts signed_to_i('-123')
puts signed_to_i('189')
