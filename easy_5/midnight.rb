def midnight(minutes)
  hour = (((minutes / 60) % 24).to_s).rjust(2, "0")
  minutes = ((minutes % 60).to_s).rjust(2, "0")
  hour + ':' + minutes
end

puts midnight(0)
puts midnight(-3)
puts midnight(35)
puts midnight(-1437)
puts midnight(3000)
puts midnight(800)
puts midnight(-4231)

def after_midnight(time)
  hours, minutes = time.split(':')
  minutes = hours.to_i * 60 + minutes.to_i
  minutes % 1440
end

def before_midnight(time)
  (1440 - after_midnight(time)) % 1440
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
puts after_midnight('25:30')
puts before_midnight('25:30')