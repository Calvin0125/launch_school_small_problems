puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire = gets.chomp.to_i
year = Time.new.year
years_left = retire - age
retire_year = year + years_left
puts "It's #{year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"
