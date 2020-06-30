DEGREE = "\xC2\xB0"
require 'bigdecimal'
def dms(angle)
  degrees = angle.floor.to_s
  minutes = (angle - BigDecimal(angle.floor)) * 60.0
  seconds = (minutes - BigDecimal(minutes.floor)) * 60
  minutes = minutes.floor.to_s.rjust(2, "0")
  seconds = seconds.round.to_s.rjust(2, "0")
  %(#{degrees + DEGREE + minutes}'#{seconds}\")
end


puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
