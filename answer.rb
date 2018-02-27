class Answer

  def initialize(input, answer)
    @input = input.to_i
    @answer = answer.to_i
  end

  def answer_true?
    if @input === @answer
      true
    else
      false
    end
  end

end