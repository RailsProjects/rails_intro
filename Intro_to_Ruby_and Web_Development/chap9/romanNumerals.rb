def old_roman_numeral input
  output = ''
  
  if input >= 1000
    num = input / 1000
    output << 'M' * num
  input = input - (num * 1000)
  end

  if input >= 500
    num = input / 500
    output << 'D' * num
  input = input - (num * 500)
  end

  if input >= 100
    num = input / 100
    output << 'C' * num
  input = input - (num * 100)
  end

  if input >= 50
    num = input / 50
    output << 'L' * num
  input = input - (num * 50)
  end

  if input >= 10
    num = input / 10
    output << 'X' * num
  input = input - (num * 10)
  end

  if input >= 5
    num = input / 5
    output << 'V' * num
  input = input - (num * 5)
  end

  if input >= 1
    num = input / 1
    output << 'I' * num
  input = input - (num * 1000)
  end

  puts output
end

puts "Enter a number from 1 to 3000"
number = gets.chomp
number = number.to_i
old_roman_numeral number
