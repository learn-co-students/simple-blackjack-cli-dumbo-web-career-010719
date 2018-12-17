require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  
  card_total = deal_card + deal_card
  display_card_total(card_total)
  
  return card_total
end

def hit?(number)
  prompt_user
  user = get_user_input
  
  if user == 's'
    return number
  elsif user == 'h'
    number = number + deal_card
  else
    invalid_command
  end
end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 total = initial_round
 
 until total > 21
  total = hit?(total)
  display_card_total(total)
 end
 
 end_game(total)
end
    
