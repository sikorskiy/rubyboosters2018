words = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }
longest = words.max_by {|x| x.size}
puts "The length of the longest word is #{longest.size}. The word is #{longest}"