# Create object with math questions
# Use random number from 1 to 20
# Add solution variable

class Question

  attr_reader :evaluation

  def initialize()
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @solution =  @first_num + @second_num
    @question = "Player 1: What does #{@first_num} plus #{@second_num} equal?"
    @response = nil
    @evaluation = nil
  end

  def question_evaluator
    puts @question
    @response = gets.chomp.to_i
    
    if @response != @solution
      puts "Player 1: Seriously? No!"
      @evaluation = false
    else
      puts "Player 2: YES! You are correct!"
      @evaluation = true
    end
  end

end