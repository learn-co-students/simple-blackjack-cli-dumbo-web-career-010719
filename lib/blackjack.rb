require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
 puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  response = gets
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
 
end

def initial_round
  num = deal_card + deal_card
  display_card_total(num)
  return num
end

def hit?(num)
  prompt_user
  response = get_user_input
  if response == "s"
    num
  elsif response == "h"
    num += deal_card
  else 
    invalid_command
    prompt_user
  end 
    num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21 do 
    hit?(num)
    display_card_total(num)
  end 
  end_game(num)
end
    
