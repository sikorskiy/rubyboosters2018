def contains_all_symbols?(word, letters)
  unique = word.split('').uniq
  unique.all? { |s| word.count(s) <= letters.count(s) }
end

words = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }
print 'Enter the letter combination (the number of any letter matters): '
letter_string = gets.chomp.downcase
puts words.find {|w| contains_all_symbols?(w, letter_string) } || 'No word with such letter combination'