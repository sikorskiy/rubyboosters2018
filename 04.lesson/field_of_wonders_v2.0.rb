require_relative '../resources/get_nouns'

def russian_word(english_word)
  'книга' #закончить позднее
end

print 'What is your name? '
name = gets.chomp
print 'Enter your choice (1 - start, 2 - Hall of fames, 3 - exit)? '
choice = gets.chomp
if choice == '1'
  hidden_word = WORDS[rand(WORDS.size)]
  puts 'Russian word is ' + russian_word(hidden_word) 
  puts 'English word is ' + hidden_word #потом убрать (только для тестов)
  star_array = ('*'*hidden_word.size).split('')
  
  while star_array.include?('*') # change later
    puts star_array.join
    print 'Enter the letter: '
    letter = gets.chomp
    if hidden_word.include?(letter)
      i = 0
      while i < hidden_word.size
        star_array[i] = letter if hidden_word[i] == letter
        i += 1
      end
    else
      # if there is no letter
    end
  end
elsif choice == '2'
  # написать вывод таблицы рекордов
end
