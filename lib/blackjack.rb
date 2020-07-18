def welcome
  # code #welcome here
puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1...11)
end

def display_card_total(num)
  # code #display_card_total here
puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
input = gets.chomp
end

def end_game (num)
  # code #end_game here
puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round()
  # code #initial_round here
ans = deal_card() + deal_card()
print display_card_total(ans)
return ans
end

def hit?(num)
  # code hit? here
prompt_user()
user_ans = get_user_input()
hand = num

if user_ans === "h"
 hand += deal_card()
elsif user_ans ==="s"
return hand
end
return hand
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome()
ans = initial_round
while ans < 21
ans = hit?(ans)
display_card_total(ans)
end
end_game(ans)
end
    
    
