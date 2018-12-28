def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(input)
  puts "Your cards add up to #{input}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  x = deal_card
  y = deal_card
  total =  x + y
  display_card_total(total)
  return total
end

def hit?(number)
  prompt_user
  x = get_user_input
  if x == "s"
    return number
  elsif x == 'h'
    y = deal_card + number
    return y
  else invalid_command
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
  welcome
  total = initial_round
  total = hit?(total)
  display_card_total(total)
  until total > 21
    hit?(total)
  end
  end_game(total)
end
    
