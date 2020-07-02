def buy_fruit(quantities)
  list = []
  quantities.each do |quantity|
    quantity[1].times do
      list << quantity[0]
    end
  end
  list
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
