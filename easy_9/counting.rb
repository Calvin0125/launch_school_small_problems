#could be shortened to (1..num).to_a

def sequence(num)
  sequence = []
  1.upto(num) { |num| sequence << num }
  sequence
end

p sequence(10)
p sequence(5)
p sequence(3)
p sequence(1)