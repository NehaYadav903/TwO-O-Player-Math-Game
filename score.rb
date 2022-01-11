# Create Score Class
# Use accessor Method: attr_accessor to create both the READER & WRITER abilities
# Create method setting the turn
# Create method deducting points when an answer is wrong
# Create method ending the game if one of the players score is 0

class Score

  attr_accessor :player_1, :player_2, :eval

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
    @eval = nil
  end

  def set_turn
    if @player_1.is_turn == @player_2.is_turn && @player_1.is_turn == false
      @player_1.is_turn = true
    elsif @player_1.is_turn == true
      @player_1.is_turn = false
      @player_2.is_turn = true
    else
      @player_1.is_turn = true
      @player_2.is_turn = false
    end
    # puts "---- NEW TURN ----"

  end

  def deduct_points
    if @eval == false && @player_1.is_turn == true
      @player_1.score -= 1
    elsif @eval == false && @player_2.is_turn == true
      @player_2.score -= 1
    end
  end

  def end_of_round
    self.deduct_points
    if @player_1.score == 0
      puts "Player 1 lost." 
      puts "Player 2 wins with a score of #{@player_2.score}/3."
      return
    elsif @player_2.score == 0
      puts "Player 2 lost."
      puts "Player 1 wins with a score of #{@player_1.score}/3."
      puts "---- GAME OVER ----"
      puts "Good bye!"
      return
    else
      puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3."
    puts " ---- NEW TURN ----"
    end
  end
end
