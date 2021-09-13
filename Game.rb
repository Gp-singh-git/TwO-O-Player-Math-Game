require 'active_support/all'

class Game 
def initialize(a,b)
  @player_A = a
  @player_B = b
  @current_player = @player_A

end



def start_game
  # @player_A.lives = @player_A.lives + 1;
  # puts @current_player.lives

  # @current_player = @player_B

  # puts @current_player.lives
  cp="Player 1"

  while @player_A.lives > 0 && @player_B.lives > 0

    num1 =  rand(1..20)
    num2 = rand(1..20)
    puts "----------New Turn---------------"
    puts "#{cp}: What does #{num1} + #{num2} equals?"

    num3 = gets.chomp.to_i

    if num3 != (num1 + num2)
      # @current_player.lives = @current_player.lives - 1
      @current_player.dec_live
      puts "#{cp}, Seriously? No!"
    else
      puts "Yes. You are Correct! "  
    end

    puts "P1: #{@player_A.lives}/3 Vs P2:  #{@player_B.lives}/3"

    if @current_player == @player_B
      @current_player = @player_A
      cp = "Player 1"
    else
      @current_player = @player_B
      cp = "Player 2"
    end


end

if(@player_A.lives > 0)
  puts " Player 1 wins with a score of #{@player_A.lives}/3"
else
  puts " Player 2 wins with a score of #{@player_B.lives}/3"
end

puts "----------Game Over---------------"
puts "Good Bye"

end



end

