# Create Players Class
# Add instance variables @score and @is_turn
# Use accessor Method: attr_accessor to create both the READER & WRITER abilities

class Players

  attr_accessor :score, :is_turn

  def initialize
    @score = 3
    @is_turn = false  
  end

end