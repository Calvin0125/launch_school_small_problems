require 'date'

def friday_13th(year)
  Date.new(year).step(Date.new(year, -1, -1)).select { |day| day.friday? && day.day == 13 }.size
end

puts friday_13th(2015)
puts friday_13th(1986)
puts friday_13th(2019)
puts friday_13th(2020)