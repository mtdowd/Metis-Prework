puts 'Give me a starting year and and ending year and I\'ll give you all the leap years inbetween'
puts 'Start year?'
fyear = gets.to_i
puts 'End year?'
eyear = gets.to_i
year = fyear
while year <= eyear
  if year % 4 == 0
    if year % 100 != 0
      puts year.to_s + ' is a leap year.'
      year = year + 1
    else
      if year % 400 == 0
        puts year.to_s + ' is a leap year.'
        year = year + 1
      else
        year = year + 1
      end
    end
  else
    year = year + 1
  end
end
