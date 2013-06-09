number1 = nil
puts "Welcome to the calculator."

while number1 != 'x'
  puts "Press \'x\' to exit -or- Enter first number:\n"
  number1 = gets.chomp
  if number1 == 'x'
    puts 'Thank you.  Goodbye.'
    break
  end

  puts "Enter second number:\n"
  number2 = gets.chomp

  puts "What operation do you want to perform?"
  puts '(type "+, -, * or /)'
  op = gets.chomp

  if op == '+'
    ans = number1.to_f + number2.to_f
  elsif op == '-'
    ans = number1.to_f - number2.to_f
  elsif op == '*'
    ans = number1.to_f * number2.to_f
  elsif op == '/'
    ans = number1.to_f / number2.to_f
  end 

  puts "Your answer is #{ans}"
end
      
