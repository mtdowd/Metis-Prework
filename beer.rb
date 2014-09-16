bottle = 99

while bottle > 0
  puts bottle.to_s + ' bottles of beer on the wall, ' + bottle.to_s + ' bottles of beer;'
  puts 'you take one down, pass it around'
  bottle = bottle - 1
  puts bottle.to_s + ' bottles of beer on the wall.'
  puts ''
end
