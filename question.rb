class Question
  attr_accessor :answer, :math

  def initialize
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    puts "What does #{num1} plus #{num2} equal?"
    @math = num1 + num2
    @answer = gets.chomp
  end

end
