def lights(n)
  lights = Array.new(n, false)
  n.times do |i|
    i.step(by: (i + 1), to: (n - 1)) do |j|
      lights[j] = !lights[j]
    end
  end
  lights.each_with_object([]).with_index do |(bool, array), index|
    array << (index + 1) if bool
  end
end

p lights(5)
p lights(10)
p lights(1000)