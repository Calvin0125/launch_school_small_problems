def prompt(message)
  puts "==> #{message}"
end 

prompt("Enter the first number:")
first = gets.chomp.to_i
prompt("Enter the second number:")
second = gets.chomp.to_i

prompt("#{first} + #{second} = #{first + second}")
prompt("#{first} - #{second} = #{first - second}")
prompt("#{first} * #{second} = #{first * second}")
prompt("#{first} / #{second} = #{first.to_f / second.to_f}")
prompt("#{first} % #{second} = #{first % second}")
prompt("#{first} ** #{second} = #{first**second}")