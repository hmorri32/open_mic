class Joke
  attr_accessor :id, :question, :answer


  def initialize(id: num, question: ques, answer: ans)
    @id       = id 
    @question = question 
    @answer   = answer
  end
end
