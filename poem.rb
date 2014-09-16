lineWidth =  50
puts ('Old Mother Hubbard'.center(lineWidth))
puts ('Eating her curds and whey'.center(lineWidth))

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.rjust  lineWidth
puts str.center lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
puts str.ljust(lineWidth) + str.rjust(lineWidth)

