def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
   num = 1 + rand(11)
  # code #deal_card here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total total
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game total
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total total
  total
end

def hit? current_total
  # code hit? here
  prompt_user
  input = get_user_input
  if input === 'h'
    current_total += deal_card
  elsif input === 's'
    current_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit? card_total
    display_card_total card_total
  end
  end_game card_total
end
