def double_consonants(string)
  doubles = string.chars.map do |char|
    if char =~ /[bcdfghjklmnpqrstvwxyz]/i 
      char * 2
    else
      char
    end
  end
  doubles.join
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

