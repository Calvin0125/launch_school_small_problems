def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')

def real_palindrome?(string)
  string = string.downcase.gsub(/[^a-z0-9]/, '')
  string == string.reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("madam i'm adam")
puts real_palindrome?('356653')


def palinumber?(num)
  num.to_s == num.to_s.reverse
end

puts palinumber?(34543)
puts palinumber?(123210)
puts palinumber?(22)
puts palinumber?(5)