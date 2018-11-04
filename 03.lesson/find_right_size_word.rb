require_relative '../resources/get_nouns'

print 'Enter the size of the word you are looking for: '
size = gets.to_i
word = WORDS.find {|x| x.size == size} if size > 0
if word.nil?
  puts puts "No #{size}-letter word is found. Sorry"
else
  puts "The first #{size}-letter word is '#{word}'. Have a good day"
end