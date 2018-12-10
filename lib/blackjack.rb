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
  input = gets.chomp
  return input
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  num = 0
  2.times do
    num += deal_card
  end
  display_card_total(num)
  return num
end

def hit?(num)
  prompt_user
  val = get_user_input
  if (val == "h")
    num += deal_card
    display_card_total(num)
    return num
  elsif (val == "s")
    #display_card_total(num)
    return num
  else
    invalid_command
    hit?(num)
  end
end

def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome
  num = initial_round
  while (num <= 21)
    num = hit?(num)
  end
  end_game(num)
end
### To run the game type ruby lib/runner.rb
### the game does not end til you get above 21
