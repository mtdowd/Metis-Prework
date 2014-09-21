toc = ['Chapter 1:  Numbers', 'page 1', 'Chapter 2:  Letters', 'page 72', 'Chapter 3:  Variables', 'page 118']
       
lineWidth = 60
title = 'Table of Contents'
puts ''
puts title.center lineWidth
puts ''

length = toc.length / 2
count = 0

length.times do
  puts toc[count].ljust(lineWidth/2) + toc[count+1].rjust(lineWidth/2)
  count = count + 2
end

