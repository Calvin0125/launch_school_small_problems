def block_word?(word)
  blocks = ['B:O', 'K:X', 'D:Q', 'C:P', 'N:A', 'G:T', 'R:E', 'F:S', 'J:W', 'H:U', 'V:I', 'L:Y', 'Z:M']
  original_length = blocks.length
  word.chars.each do |letter|
    blocks.delete_if { |block| block.include?(letter.upcase) }
  end
  blocks.length == original_length - word.length ? true : false
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
