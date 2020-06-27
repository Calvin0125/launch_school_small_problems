def is_odd?(num)
  return nil unless num.instance_of?(Integer)
  num.abs % 2 == 1? true : false
end

p is_odd?(2)
p is_odd?(0)
p is_odd?(7)
p is_odd?(-123)
p is_odd?(-64)
p is_odd?('3')