=begin

Note: we're looking for Ruby commands for the below questions, not the actual answers, unless it's a question. 

Hint: you can type "irb" in your terminal to get a Ruby console to test things out. For multi-line code, use an editor 
      that can run Ruby code, or copy/paste into irb.

Hint 2: you can refer to the Ruby doc for Array and Hash here: 

http://www.ruby-doc.org/core-1.9.3/Array.html
http://www.ruby-doc.org/core-1.9.3/Hash.html

=end

puts '1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.'
	numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numArray.each do |num|
	  puts num
	end

puts '2. Same as above, but only print out values greater than 5.'
	numArray.each do |num|
	  if num > 5
	    puts num
	  end
	end

puts '3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.'
	numArray.select {|a| a % 2 != 0}
	or
	numArray.select {|a| a.odd?}

puts '4. Append "11" to the end of the array. Prepend "0" to the beginning.'
	numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numArray << 11
	numArray.unshift(0)

puts '5. Get rid of "11". And append a "3".'
	numArray.pop
	numArray << 3

puts '6. Get rid of duplicates without specifically removing any one value.'
	numArray.uniq  //uniq! mutates the caller itself

puts '7. What\'s the major difference between an Array and a Hash?'

puts 'Array: 
		Arrays are ordered, integer-indexed collections of any object; Array indexing starts at 0;
		negative numbers assumed to be relative to end of array; -1 is last element of array, -2 is next-to-last, etc.

		Arrays are for keeping things in order.  
		Hashes are for keeping things referenced by other things.

	  Hash: 
		A Hash is a collection of key-value pairs. It is similar to an Array, except that indexing is done via arbitrary 
		keys of any object type, not an integer index. Hashes enumerate their values in the order that the corresponding keys were inserted.

		Hashes have a default value that is returned when accessing keys that do not exist in the hash. By default, that value is nil.'


puts '8. Create a Hash using both Ruby 1.8 and 1.9 syntax.'
	h = {:color => 'blue'}  //Ruby 1.8
	h = {color: 'blue'}		//same as above, but in Ruby 1.9


puts 'Suppose you have a h = {a:1, b:2, c:3, d:4}'

puts '9. Get the value of key "b".'
	h["b"] => nil  //incorrect
	h[:b] => 2


puts '10. Add to this hash the key:value pair {e:5}'
	h[:e] = 5

puts '13. Remove all key:value pairs whose value is less than 3.5'
	h.delete_if {|k, v| v < 3.5}

	h.delete("Bob")  //"Bob" is the Key

puts '14. Can hash values be arrays? Can you have an array of hashes? (give examples)'
	Yes:
		Hash values of Arrays:
			arr1 = [1, 2]
			arr2 = [3, 4]
			hArr = {a: arr1, b: arr2}
			 => {:a=>[1, 2], :b=>[3, 4]}

		Array of Hashes:
			h1 = {a:5, b:10}
			h2 = {c:15, d:20}
			arr = [h1, h2]
			=> [{:a=>5, :b=>10}, {:c=>15, :d=>20}]

puts '15. Look at several Rails/Ruby online API sources and say which one you like best and why.'
	http://www.ruby-doc.org/core-1.9.3/
	I like this best because it gives clear examples, is easy to read, and a completem, accurate, and thus authoritative source of Ruby.

