
puts 'You\'re grandmother is here. Say something to her!'
count = 0
while count < 3
 response = gets.chomp
 while response != 'BYE'
  if response == response.upcase
    num = rand(21)
    year = 1930 + num
    puts 'NO, NOT SINCE ' + year.to_s + '!' 
    response = gets.chomp
  else
    puts 'HUH?! SPEAK UP, SONNY!'
    response = gets.chomp
  end
  count = 0
 end
 count = count + 1
end

