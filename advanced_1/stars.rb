def print_top(outer_spaces, inner_spaces)
  until inner_spaces == 0
    puts ' ' * outer_spaces + '*' + ' ' * inner_spaces + \
         '*' + ' ' * inner_spaces + '*' + ' ' * outer_spaces
    
    outer_spaces += 1
    inner_spaces -= 1
  end
end

def print_middle(one_from_middle, n)
  puts one_from_middle
  puts '*' * n
  puts one_from_middle
end

def print_bottom(outer_spaces, inner_spaces)
  until outer_spaces < 0
    puts ' ' * outer_spaces + '*' + ' ' * inner_spaces + \
         '*' + ' ' * inner_spaces + '*' + ' ' * outer_spaces
    
    inner_spaces += 1
    outer_spaces -= 1
  end
end

def star(n)
  outer_spaces = 0
  inner_spaces = (n / 2 - 1)
  print_top(outer_spaces, inner_spaces)

  one_from_middle = ' ' * ((n -3 ) / 2) + '*' * 3 + ' ' * ((n - 3) / 2)
  print_middle(one_from_middle, n)

  outer_spaces = (n - 5) / 2
  inner_spaces = 1
  print_bottom(outer_spaces, inner_spaces)
end

star(7)
star(15)
star(25)