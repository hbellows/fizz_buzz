require 'minitest/autorun'
require 'minitest/pride'
require './lib/fizz_buzz.rb'

class FizzBuzzTest < Minitest::Test

  def test_it_can_play_Super_Fizz_Buzz
    game = GameController.new(1..8)

    result = 1, 2, 'Fizz', 3, 4, 'Buzz', 'Fizz', 'Super', 8
    assert_equal result, game.super_fizz_buzz
  end
end
