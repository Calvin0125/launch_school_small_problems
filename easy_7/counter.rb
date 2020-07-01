def case_count(string)
  counts = {}
  counts[:lowercase] = string.count("a-z")
  counts[:uppercase] = string.count("A-Z")
  counts[:neither] = string.count("^a-zA-Z")
  counts
end

puts case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }