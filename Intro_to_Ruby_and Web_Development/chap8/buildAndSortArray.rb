puts "\n\nType a word, then press Enter."
puts "When you are done, just press Enter without typing a word\n"

words = []

while true
  word = gets.chomp
  if word == ''
    break
  end
  words.push(word)
end

words.sort.each do |w|
  puts w
end

