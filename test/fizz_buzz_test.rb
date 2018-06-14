require 'minitest/autorun'
require 'minitest/pride'
require './lib/fizz_buzz.rb'

class FizzBuzzTest < Minitest::Test

  def test_it_exists
    buzz = FizzBuzz.new

    assert_instance_of FizzBuzz, buzz
  end

  # def test_it_calculates_Fizz_result
  #   fizz_buzz = FizzBuzz.new
  #   input = (1..8)
  #
  #   result = 1, 2, 'Fizz', 4, 5, 'Fizz', 7, 8
  #   assert_equal result, fizz_buzz.fizz(input)
  # end
  #
  # def test_it_calculates_Buzz_result
  #   fizz_buzz = FizzBuzz.new
  #   input = (1..8)
  #
  #   fizz_buzz.fizz(input)
  #   result = 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8
  #   assert_equal result, fizz_buzz.buzz(input)
  # end

  # def test_it_calculates_Super_result
  #   fizz_buzz = FizzBuzz.new
  #
  #   assert_equal 'Super', fizz_buzz.super(14)
  #   assert_equal '5', fizz_buzz.super(5)
  # end

  def test_it_can_play_Super_Fizz_Buzz
    fizz_buzz = FizzBuzz.new
    input = (1..8)

    result = 1, 2, 'Fizz', 3, 4, 'Buzz', 'Fizz', 'Super', 8
    assert_equal result, fizz_buzz.super_fizz_buzz(input)
  end

end
