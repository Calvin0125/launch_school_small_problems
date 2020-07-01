def new_swapcase(string)
  array = string.chars
  array.map! do |letter|
    if letter =~ /[a-z]/
      letter.upcase
    elsif letter =~ /[A-Z]/
      letter.downcase
    else
      letter
    end
  end
  array.join
end

puts new_swapcase('CamelCase') == 'cAMELcASE'
puts new_swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'