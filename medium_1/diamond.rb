def diamond(n)
  stars = 1
  spaces = (n - 1) / 2
  max_width = false

  n.times do
    puts ' ' * spaces + '*' * stars + ' ' * spaces
    max_width = true if stars == n
    if max_width
      stars -= 2
      spaces += 1
    else
      stars += 2
      spaces -= 1
    end
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(25)