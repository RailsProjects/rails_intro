def modern_roman_numeral input
  thousands    = (input / 1000)
  hundreds     = (input % 1000 / 100)
  tens         = (input % 100  /  10)
  ones         = (input % 10   /   1)

  output = 'M' * thousands

  if hundreds == 9 
    output << 'CM'
  elsif hundreds == 4
    output << 'CD'
  else 
    output << 'D' * (input % 1000 / 500)
    output << 'C' * (input % 500  / 100)
  end

  if tens == 9 
    output << 'XC'
  elsif tens == 4
    output << 'XL'
  else 
    output << 'L' * (input % 100 / 50)
    output << 'X' * (input % 50  / 10)
  end
  
  if ones == 9 
    output << 'IX'
  elsif ones == 4
    output << 'IV'
  else 
    output << 'V' * (input % 10 / 5)
    output << 'I' * (input % 5  / 1)
  end

  puts output
end

puts "Enter a number from 1 to 3000"
number = gets.chomp
number = number.to_i
modern_roman_numeral number
