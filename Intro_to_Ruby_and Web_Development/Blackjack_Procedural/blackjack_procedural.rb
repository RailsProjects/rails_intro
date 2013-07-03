# Blackjack in Procedural-Style Ruby Code
# by Laurence Kauffman
# July 1, 2013

fullDeck = ['HA', 'H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'HJ', 'HQ', 'HK',
				'DA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'DJ', 'DQ', 'DK',
				'CA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'CJ', 'CQ', 'CK',
				'AA', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'AJ', 'AQ', 'AK']

playerMoney = 500

puts "Enter Your Name: "
playerName = gets.chomp
puts 'Hello, ' + playerName + ', Welcome to Blackjack!'

puts 'You have $' + playerMoney.to_s
puts 'How much do you want to wager for this hand?'
bet = gets.chomp.to_i

# puts bet.to_s
playAgain = 'y'

while true
	puts 'in loop'

	# deck = [] 
	deck = [ fullDeck.shuffle(random: Random.new(1)) ]  
	  # puts deck

	playerCards = [ ]
	playerCards << deck.pop
	playerCards << deck.pop
	
	puts playerCards
	# playerCard2 = deckInPlay.pop
	# dealerCards = []

	puts 'Play Again? (y/n)'
	playAgain = gets.chomp
	
	if playAgain == 'n'
		break
	end

end