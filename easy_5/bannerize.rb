def banner(string)
  outer = '+-'
  string.length.times { outer << '-'}
  outer += '-+'
  inner = '| '
  string.length.times { inner << ' '}
  inner += ' |'
  text = '| ' + string + ' |'
  outer + "\n" + inner + "\n" + text + "\n" + inner + "\n" + outer
end

puts banner("banner")
puts banner("Launch School!")
puts banner('')