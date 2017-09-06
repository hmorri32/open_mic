require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_joke_exists 
    joke = Joke.new({id: 1, question: 2, answer: 3})
    assert joke
    assert_instance_of Joke, joke
  end

  def test_joke_has_id 
    joke = Joke.new({id: 1, question: 'sup', answer: 'NMJCU?!!?'})

    assert_equal 1, joke.id
  end

  def test_joke_has_question
    joke = Joke.new({id: 1, question: 'sup', answer: 'NMJCU?!!?'})

    assert_equal 'sup', joke.question
  end

  def test_joke_has_answer
    joke = Joke.new({id: 1, question: 'sup', answer: 'NMJCU?!!?'})

    assert_equal 'NMJCU?!!?', joke.answer
  end
end
