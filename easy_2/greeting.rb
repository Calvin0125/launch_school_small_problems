puts "What is your name?"
name = gets.chomp
if name[name.length - 1] == '!'
  puts "HELLO #{name.upcase.gsub(/!/, "")}, WHY ARE WE SCREAMING?!"
else
  puts "Hello #{name}."
end