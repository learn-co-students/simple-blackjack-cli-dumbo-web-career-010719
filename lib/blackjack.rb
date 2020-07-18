#The #welcome Method
#This method uses puts to output the message: "Welcome to the Blackjack Table
def welcome
  puts "Welcome to the Blackjack Table"
end
#This method generates and returns a random number between 1 and 11
def deal_card
  # code #deal_card here
  random_card=rand(1..11)
end
#display_card_total
#accepts one argument, the card total 
#prints the value of the cards to the screen 
#does not hardcode the card total
def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end
#prompt_user
#gives instructions for hitting or staying
def prompt_user
  # code #prompt_user here
  puts "Type \'h\' to hit or \'s\' to stay"
end
#get_user_input---returns the value of a `gets.chomp` method
def get_user_input
  # code #get_user_input here
  gets.chomp
end
#end_game---prints apology, card total, and thank you message
#TO_D0
def end_game (failed_total)
  # code #end_game here
  puts "Sorry, you hit #{failed_total}. Thanks for playing!"
end
#initial_round
#calls on #deal_card twice and returns the sum
#calls on the '#display_card_total' to print sum of cards
def initial_round
  # code #initial_round here
  sum=deal_card+deal_card
  display_card_total(sum)
  sum
end
#hit?
#calls on #prompt_user then #get_user_input 
#returns an integer which is the card total 
#does not deal another card if user types 's' 
#deals another card when user types 'h' 

def hit?(previous_sum)
    prompt_user
    input=get_user_input
    if input=="s"
        sum=previous_sum
    elsif input =="h"
        third_input=deal_card
        sum=previous_sum+third_input
    else
      invalid_command
      sum=previous_sum
    end
    sum
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total=0;
  welcome
   total=initial_round
  loop do
    total=hit?(total)
    display_card_total(total)
      if total>21
       end_game(total)
      break
      end
  end

end
    
