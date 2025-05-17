=begin
Let's play! You have to return which player won! In case of a draw return Draw!.

- Scissors beats Paper
- Paper beats Rock
- Rock beats Scissors

Examples(Input1, Input2 --> Output):

"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"

https://www.codewars.com/kata/5672a98bdbdd995fad00000f
=end

def rps(p1, p2)
    if p1 == p2
      "Draw!"
    elsif (p1 == "scissors" && p2 == "paper") || (p1 == "paper" && p2 == "rock") || (p1 == "rock" && p2 == "scissors") 
      "Player 1 won!"
    else
      "Player 2 won!"
    end  
end

rps("scissors", "paper")   # => "Player 1 won!"
rps("scissors", "rock")    # => "Player 2 won!"
rps("paper", "paper")      # => "Draw!"
