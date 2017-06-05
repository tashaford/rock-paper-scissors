class Game

  def initialize(var1, var2)
    @var1 = var1
    @var2 = var2
  end

  def who_won()
    if @var1 == @var2
      return "it is a draw"
    end
    if @var1 == "rock" && @var2 =="scissors"
      return "player 1 wins using #{@var1}"
    end
    if @var1 == "scissors" && @var2 == "paper"
      return "player 1 wins using #{@var1}"
    end
    if @var1 == "paper" && @var2 == "rock"
      return "player 1 wins using #{@var1}"
    end
    if @var1 == "scissors" && @var2 == "rock"
      return "player 2 wins using #{@var2}"
    end
    if @var1 == "paper" && @var2 == "scissors"
     return "player 2 wins using #{@var2}"
   end
   if @var1 == "rock" && @var2 == "paper"
     return "player 2 wins using #{@var2}"
   end
 end


 def self.computer_choice()
  array = ["rock", "paper", "scissors"]
  return array.sample()
end

end