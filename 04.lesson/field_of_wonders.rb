WORDS = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }

def get_word
  WORDS[rand(WORDS.size)].downcase
end


print 'Enter your name: '
name = gets.chomp
print 'Enter your choice (1 - start, 2 - hall of fame, 3 - exit): '
choice = gets.chomp
if choice == '1'
  hidden_word = get_word
  puts 'Original word: ' + hidden_word + ' (only for testing)'
  puts 'Translated word: ' # add translated word
  star_array = ('*'*hidden_word.size).split('')
  # start unfolding the word
  while true
    puts star_array.join
    print 'Enter the letter: '
    letter = gets.chomp
    if hidden_word.include?(letter)
      for l in (0..hidden_word.size) do
        star_array[l] = letter if hidden_word[l] == letter
      end
      break unless star_array.include?('*')
    else
      puts 'The letter not found'
    end
  end
  
elsif choice == '2'
  #call to hall of fame
end