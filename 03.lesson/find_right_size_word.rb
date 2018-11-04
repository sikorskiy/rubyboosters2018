words = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }
print 'Enter the size of the word you are looking for: '
size = gets.to_i
word = words.find {|x| x.size == size} if size > 0
if word.nil?
  puts puts "No #{size}-letter word is found. Sorry"
else
  puts "The first #{size}-letter word is '#{word}'. Have a good day"
end