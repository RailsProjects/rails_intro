=begin
=end

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'



puts 'What is your first name?'
fName = gets.chomp 
puts 'What is your middle name?'
mName = gets.chomp 
puts  'What is your last name?'
lName = gets.chomp
puts 'Hello, ' + fName + ' ' + mName + ' ' + lName 



puts 'What is your favorite number?'
fNum1 = gets.chomp.to_i
fNum2 = fNum1 + 1
puts fNum1.to_s + ' is a cool number.  Do you like ' + fNum2.to_s + ' better?'

