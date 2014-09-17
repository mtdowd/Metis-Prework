puts 'Enter however many words you like, and I\'ll alphabetize them.'
puts 'Just hit enter on a blank line when you are finished entering.'

wordlist = []
word = gets.chomp
while word != ''
  wordlist.push word
  word = gets.chomp
end

puts wordlist.sort { |a,b| a.capitalize <=> b.capitalize }

