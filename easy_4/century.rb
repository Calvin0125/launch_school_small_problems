def add_suffix(year)
  case
  when year[-2] == '1'
    year + 'th'
  when year[-1] == '1'
    year + 'st'
  when year[-1] == '2'
    year + 'nd'
  when year[-1] == '3'
    year + 'rd'
  else
    year + 'th'
  end
end

def century(year)
  year -= 1 if year % 100 == 0
  century = ((year / 100) + 1)
  add_suffix(century.to_s)
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)