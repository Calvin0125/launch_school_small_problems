CONVERT = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def int_to_s(num)
  digits = []

  loop do
    num, digit = num.divmod(10)
    digits.unshift(CONVERT[digit])
    break if num == 0
  end

  digits.join
end

p int_to_s(1234)
p int_to_s(0)
p int_to_s(5792)
p int_to_s(5000)

def signed_int_to_s(num)
  if num > 0
    sign = '+'
  elsif num < 0
    sign = '-'
    num *= -1
  else
    sign = ''
  end

  sign + int_to_s(num)
end

p signed_int_to_s(-5378)
p signed_int_to_s(0)
p signed_int_to_s(107)
