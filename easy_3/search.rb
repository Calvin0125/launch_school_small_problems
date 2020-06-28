def prompt(ordinal)
  puts "==> Enter the #{ordinal} number:"
end

numbers = []

prompt('1st')
numbers << gets.chomp.to_i
prompt('2nd')
numbers << gets.chomp.to_i
prompt('3rd')
numbers << gets.chomp.to_i
prompt('4th')
numbers << gets.chomp.to_i
prompt('5th')
numbers << gets.chomp.to_i
prompt('last')
last = gets.chomp.to_i

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end

