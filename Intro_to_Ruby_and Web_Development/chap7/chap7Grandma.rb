count = 0
puts 'What do you want, Sonny?'
input = gets.chomp 

while true #input != 'BYE'  
  inputCaps = input.upcase
  
  if inputCaps == input
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s
  else
    puts 'HUH?!  SPEAK UP, SONNY!'
  end
  
  puts "\nWhat do you want, Sonny?"
  input = gets.chomp
  
  if input == 'BYE'
    count += 1
    #puts count
    if count == 3
      break
    end
  end
end