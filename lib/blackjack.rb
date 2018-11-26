def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  firstCard = deal_card
  secCard = deal_card 
  total = secCard + firstCard
  display_card_total(total)
  
  total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  newCard = 0
  
    
    
  if input == 's'
  elsif input == 'h'
    newCard = deal_card
  else 
    invalid_command
  end 
  
  
  card_total + newCard 
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  updateScore = initial_round
  until updateScore > 21 do 
    updateScore = hit?(updateScore)
    display_card_total(updateScore)
  end
  end_game(updateScore)
  
end