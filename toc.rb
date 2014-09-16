lineWidth = 60
title = 'Table of Contents'
chap1 = 'Chapter 1:  Numbers'
chap1pg = 'page 1'
chap2 = 'Chapter 2:  Letters'
chap2pg = 'page 72'
chap3 = 'Chapter 3:  Variables'
chap3pg = 'page 118'
puts ''
puts title.center lineWidth
puts ''
puts chap1.ljust(lineWidth/2) + chap1pg.rjust(lineWidth/2)
puts chap2.ljust(lineWidth/2) + chap2pg.rjust(lineWidth/2)
puts chap3.ljust(lineWidth/2) + chap3pg.rjust(lineWidth/2)
