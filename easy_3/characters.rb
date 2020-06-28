puts "Please write a word or multiple words:"
string = gets.chomp
string_no_space = string.gsub(/\s+/, '')
puts "There are #{string_no_space.length} characters in '#{string}'."