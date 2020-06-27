def count_occurences(array)
  return nil unless array.instance_of?(Array)
  occurences = Hash.new(0)
  array.each do |word|
    occurences[word] += 1
  end
  occurences.each {|k, v| puts "#{k} => #{v}"}
end

vehicles = ['car', 'truck', 'Truck', 'motorcycle', 'motorhome', 'car', 'car', 'motorhome', 'truck']

count_occurences(vehicles)
count_occurences([])