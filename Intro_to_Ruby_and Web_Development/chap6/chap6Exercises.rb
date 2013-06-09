=begin
puts self

puts 'What is your first name?'
fName = gets.chomp 
puts 'What is your middle name?'
mName = gets.chomp 
puts  'What is your last name?'
lName = gets.chomp
name = fName + ' ' + mName + ' ' + lName
length = name.length.to_s 
puts 'Your name has ' + length + ' characters in it (whitespace counts).' 

=end



puts 'I am your Boss...what do you want?'
question = gets.chomp
puts 'What do you mean, "' + question + '"?!?' + '  You\'re FIRED!'


=begin
line_width = 50
puts("Table of Contents\n".center(line_width))
puts('Chapter 1:  Getting Started'.ljust(line_width/2) + 'page  1'.rjust(line_width/2))
puts('Chapter 2:  Numbers        '.ljust(line_width/2) + 'page  9'.rjust(line_width/2))
puts('Chapter 3:  Letters        '.ljust(line_width/2) + 'page 13'.rjust(line_width/2))
=end

