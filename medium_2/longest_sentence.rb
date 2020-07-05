# The solution shows a max_by method that I was unaware of. 

def longest_sentence(file)
  document = File.new(file)
  sentences = document.read.split(/[\.?!]/)
  sentences.sort_by! { |sentence| sentence.split.length }
  longest = sentences.last
  puts "Here is the longest sentence, with #{longest.split.length} words."
  puts longest
end

longest_sentence('four_score.txt')
longest_sentence('frankenstein.txt')