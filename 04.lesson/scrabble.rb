WORDS = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }

def contains_all_symbols?(word, letters)
  uniq = word.split('').uniq #book -> ['b','o','k']
  uniq.all? { |symbol| word.count(symbol) <= letters.count(symbol) }
end

print "Enter your letters: "
letters = gets.chomp #oookbd
result = WORDS.select { |w| contains_all_symbols?(w, letters) }
puts result.max_by { |x| x.size }