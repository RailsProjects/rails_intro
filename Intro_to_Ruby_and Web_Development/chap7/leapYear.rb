puts 'Welcome to the Leap Year Program'
puts 'What is your starting year?'
startingYear = gets.chomp.to_i
puts 'What is your ending year?'
endingYear = gets.chomp.to_i

s = e = false

if startingYear % 100 == 0 
  if startingYear % 400 == 0
    s = true
  end
elsif startingYear % 4 == 0
  s = true
end

if endingYear % 100 == 0 
  if endingYear % 400 == 0
    e = true
  end
elsif endingYear % 4 == 0
  e = true    
end

if s == true
  puts 'Your starting year, ' + startingYear.to_s + ' is a leap year.' 
else
  puts 'Your starting year, ' + startingYear.to_s + ' is NOT a leap year.' 
end

year = startingYear + 1

while year < endingYear
  if year % 4 == 0
    puts year.to_s + ' is a leap year'
  end
  year += 1
end

if e == true
  puts 'Your ending year, ' + endingYear.to_s + ' is a leap year.' 
else
  puts 'Your ending year, ' + endingYear.to_s + ' is NOT a leap year.' 
end