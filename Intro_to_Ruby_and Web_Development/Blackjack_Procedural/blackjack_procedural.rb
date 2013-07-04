# Blackjack in Procedural-Style Ruby Code
# by Laurence Kauffman
# July 1, 2013

def calculate_hand (hand)
  total = 0
  hand2 = hand.dup # duplicate array so this method doesn't mutate/empty the original

  while hand2.size != 0
    card = hand2.pop

  case card[1]
  when 'A'
    if total + 11 > 21
      total += 1
    else
      total += 11
    end
  when '1'
    total += 10
  when 'J'
    total += 10
  when 'Q'
    total += 10
  when 'K'
    total += 10
  else
    total += card[1].to_i
  end
  end
  total
end



def list_cards(person, cards_to_list)
  puts person + " cards are: " + cards_to_list.to_s
end
  

def wager
  while true
    puts 'You have $' + player_money.to_s
    puts 'How much do you want to wager for this hand?'
    bet = gets.chomp.to_i
    if bet > player_money
      puts "Bet exceeds your funds.  Please try again."
    else
      player_money = player_money - bet
      puts "You have bet $" + bet.to_s
      bet
    end
  end


end


full_deck = 
[ 'HA', 'H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'H10', 'HJ', 'HQ', 'HK',
  'DA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'D10', 'DJ', 'DQ', 'DK',
  'CA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'D10', 'CJ', 'CQ', 'CK',
  'SA', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10', 'SJ', 'SQ', 'SK' ]


player_money = 500
bet = 0
puts "Enter Your Name: "
player_name = gets.chomp
print 'Hello, ' + player_name + ', Welcome to Blackjack!  '

# puts bet.to_s
play_again = 'y'

while true
  # deck = fullDeck.shuffle(random: Random.new(1))   
  #### =>>  test in irb and with pry to see what's happening - gives same order every time
  deck = full_deck.shuffle
  
  dealer_cards = [deck.pop, deck.pop]
  player_cards = [deck.pop, deck.pop]
    # OR player_cards = []; player_cards << deck.pop; player_cards << deck.pop
    # OR player_cards = []; player_cards << deck.pop << deck.pop
  dealer_total = 0
  player_total = 0

  # bet = wager
  puts list_cards("Your ", player_cards)
  puts "Your total is: " + calculate_hand(player_cards).to_s


  while true
    bust = 'n'
    print "Do you want a hit? (y/n)"
    hit = gets.chomp
    
    if hit == 'y'
      player_cards << deck.pop
      puts list_cards("Your ", player_cards)
      puts "Your total is: " + calculate_hand(player_cards).to_s
      player_total = calculate_hand(player_cards)

      if player_total > 21
        bust = 'y'
        break
      end
    else
      break
    end
  end

  if bust == 'y'
    puts "You Bust"
  else
    dealer_total =  calculate_hand(dealer_cards)
    
    while dealer_total < 17
      dealer_cards << deck.pop
      dealer_total =  calculate_hand(dealer_cards)
    end

    puts list_cards("Dealer ", dealer_cards)
    puts "Dealer Total is: " + dealer_total.to_s

    if dealer_total > 21 || dealer_total < player_total 
      player_money += bet
      puts "YOU WIN!  You now have $" + player_money
    elsif dealer_total == player_total
      puts "It's a Draw.    You now have $" + player_money
    else
      player_money -= bet
      puts "You lose.  You now have $" + player_money
    end 
  end

  puts 'Play Again? (y/n)'
  play_again = gets.chomp

  if play_again == 'n'
    break
  end
end
