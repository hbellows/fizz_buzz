require 'minitest/autorun'
require 'minitest/pride'
require './lib/fizz_buzz.rb'
require './lib/game_controller.rb'

class FizzBuzzTest < Minitest::Test

  def test_it_can_play_Super_Fizz_Buzz
    input = (1..8)
    fizz_buzz = FizzBuzz.new(input)

    result = 1, 2, 'Fizz', 3, 4, 'Buzz', 'Fizz', 'Super', 8
    assert_equal result, fizz_buzz.play_game(input)
  end
end
