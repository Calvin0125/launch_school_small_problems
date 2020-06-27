puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, or 'p' to compute the product."
choice = gets.chomp.downcase
while choice !~ /\A[sp]\z/i
  puts "You must enter either s or p!"
  choice = gets.chomp.downcase
end
if choice == 's'
  sum = 0
  1.upto(num) {|n| sum += n}
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif choice == 'p'
  product = 1
  1.upto(num) {|n| product *= n}
  puts "The product of the integers between 1 and #{num} is #{product}."
end
