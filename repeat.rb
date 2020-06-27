def repeat(str, num)
  #use 'instance_of?' because it is more specific that 'is_a?' based on documentation
  return nil unless str.instance_of?(String) && num.instance_of?(Integer) && num > 0
  num.times {puts str}
end

repeat('Hello World!', 3)
repeat(['Hello World!'], 3)
repeat('Hello World!', '3')
repeat('Hello World!', -4)

