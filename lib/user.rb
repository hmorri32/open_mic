require 'csv'

class User
  attr_reader :name, 
              :jokes

  def initialize(name)
    @name  = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def perform_routine_for(user)
    @jokes.each {|joke| user.jokes << joke}
  end

  def learn_routine(file)
    arr = CSV.read(file)
    arr.shift 
    arr.each do |line|
      num  = line[0]
      ques = line[1]
      answ = line[2]
      joke = Joke.new({id: num, question: ques, answer: answ})
      @jokes << joke
    end
  end
end