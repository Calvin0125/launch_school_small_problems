def staggered_case(string)
  characters = string.chars.map.with_index do |char, index|
    if index.even?
      char.upcase
    else
      char.downcase
    end
  end
  characters.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def alpha_staggered_case(string)
  uppercase = true
  characters = string.chars.map do |char|
    if char =~ /[a-z]/i
      if uppercase
        uppercase = false
        char.upcase
      else
        uppercase = true
        char.downcase
      end
    else
      char
    end
  end
  characters.join
end

puts alpha_staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts alpha_staggered_case('ALL CAPS') == 'AlL cApS'
puts alpha_staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'