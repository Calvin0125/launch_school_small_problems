def balanced?(string)
  parentheses_tracker = 0
  string.chars.each do |char|
    if char == '('
      parentheses_tracker += 1
    elsif char == ')'
      parentheses_tracker -= 1
    end
    return false if parentheses_tracker < 0
  end
  parentheses_tracker == 0
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false