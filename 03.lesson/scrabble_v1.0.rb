def contains_all_symbols?(word, letters)
  i = 0
  while i < word.size
    if word.count(word[i]) > letters.count(word[i])
      break
    else
      i+=1
    end
  end
  i == word.size
end

words = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }
print 'Enter the letter combination (the number of any letter matters): '
letter_string = gets.chomp.downcase
i = 0

while i < words.size
  if contains_all_symbols?(words[i], letter_string)
    search_word = words[i]
    break
  else
    i+=1
  end
end

puts search_word #|| 'No word with such letter combination'