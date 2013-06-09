bottles = 99
while bottles > 0
  if bottles > 1
    puts bottles.to_s + ' bottles of beer on the wall'
    puts bottles.to_s + ' bottles of beer'
    puts 'You take one down, pass it around'
    bottles = bottles -1
    if bottles > 1
      puts bottles.to_s + ' bottles of beer on the wall'
      puts 
    else
    puts bottles.to_s + ' bottle of beer on the wall'
    puts
    puts bottles.to_s + ' bottle of beer on the wall'
    puts bottles.to_s + ' bottle of beer'
    puts 'You take one down, pass it around'
    bottles = bottles -1
    puts bottles.to_s + ' bottles of beer on the wall'
    end
  end
end


