def to_i(str)
  num = 0
  index = -1
  place = 1

  str.length.times do
    num += (str[index].ord - 48) * place
    place *= 10
    index -= 1
  end
  num
end

puts to_i('1234')
puts to_i('598239')
puts to_i('7')

#my solution is quite different from the official one
#they created a hash with the string number as key and int as value
#then created an array of digits, and created the final number using each