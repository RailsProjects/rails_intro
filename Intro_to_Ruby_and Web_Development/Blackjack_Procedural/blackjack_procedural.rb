# Blackjack in Procedural-Style Ruby Code
# by Laurence Kauffman
# July 1, 2013

def calculate_hand (hand)
	total = 0

	while hand.pop != nil
		card = hand.pop

		case card
		when card[1] == 'A'
		if total + 11 > 21
		  total += 1
		  else
		  total += 11
		  end

		when card[1] == 'J'
		total += 10
		when card[1] == 'Q'
		total += 10
		when card[1] == 'K'
		total += 10
		else
		total += card[1].to_i
		end
puts "total in loop: " + total.to_s
	end
	total
end

full_deck = 
[ 'HA', 'H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'H10', 'HJ', 'HQ', 'HK',
	'DA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'D10', 'DJ', 'DQ', 'DK',
	'CA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'D10', 'CJ', 'CQ', 'CK',
	'SA', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10', 'SJ', 'SQ', 'SK' ]

player_money = 500

puts "Enter Your Name: "
player_name = gets.chomp
puts 'Hello, ' + player_name + ', Welcome to Blackjack!'

puts 'You have $' + player_money.to_s
puts 'How much do you want to wager for this hand?'
bet = gets.chomp.to_i

# puts bet.to_s
play_again = 'y'

while true
	puts 'in loop'

	# deck = fullDeck.shuffle(random: Random.new(1))   
	# 	test in irb and with pry to see what's happening - gives same order every time
	
	deck = full_deck.shuffle
	# puts deck

	player_cards = [deck.pop, deck.pop]
	dealer_cards = [deck.pop, deck.pop]
	
	puts "Your cards: " + player_cards.to_s
	total = calculate_hand(player_cards)
	puts "Your total is: " + total.to_s

	while true
		puts "Do you want a hit? (y/n)"
		hit = gets.chomp
		
		if hit == 'y'
			player_cards << deck.pop
		else
			break
		end

		puts "Your cards: " + player_cards.to_s
	end

	puts "Your cards: " + player_cards.to_s

	
	puts 'Play Again? (y/n)'
	play_again = gets.chomp
	
	if play_again == 'n'
		break
	end
end
	