def stringy(num)
  return nil unless num.instance_of?(Integer) && num > 0
  string = ''
  1.upto(num) {|n| string += (n % 2).to_s}
  return string
end

puts stringy(10)
puts stringy(-2)
puts stringy(5)