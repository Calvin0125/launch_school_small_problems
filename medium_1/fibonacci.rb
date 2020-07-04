def fibonacci_recursive(n)
  return 1 if n <= 2
  fibonacci_recursive(n-2) + fibonacci_recursive(n-1)
end

puts fibonacci_recursive(1) == 1
puts fibonacci_recursive(2) == 1
puts fibonacci_recursive(3) == 2
puts fibonacci_recursive(4) == 3
puts fibonacci_recursive(5) == 5
puts fibonacci_recursive(12) == 144
puts fibonacci_recursive(20) == 6765

def fibonacci_procedural(n)
  sequence = [1, 1]
  (n - 2).times do |i|
    sequence << sequence[i] + sequence[i + 1]
  end
  sequence.last
end

puts fibonacci_procedural(20) == 6765
puts fibonacci_procedural(100) == 354224848179261915075
puts fibonacci_procedural(100_001)

def fibonacci_last(n)
  fibonacci_procedural(n).to_s[-1].to_i
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4