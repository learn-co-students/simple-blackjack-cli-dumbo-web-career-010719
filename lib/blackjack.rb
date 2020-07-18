def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(n)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    return n + deal_card
  elsif answer == 's'
    return n
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid commmand"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  n = initial_round
  until n > 21
    n = hit?(n)
    display_card_total(n)
  end
  end_game(n)
end
