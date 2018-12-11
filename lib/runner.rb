require_relative "blackjack.rb"

def runner
welcome()
ans = hit?(initial_round())
while ans < 21
ans = hit?(ans)
end
return end_game(ans)
end
    