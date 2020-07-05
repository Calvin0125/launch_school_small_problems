def letter_percentages(string)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |letter|
    case letter
    when /[a-z]/
      percentages[:lowercase] += 1
    when /[A-Z]/
      percentages[:uppercase] += 1
    else
      percentages[:neither] += 1
    end
  end
  total = percentages.values.sum.to_f
  percentages.each do |key, value|
    percentages[key] = ((value.to_f / total) * 100).round(2)
  end
  percentages
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef') 
p letter_percentages('123') 