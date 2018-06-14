require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_controller.rb'

class GameControllerTest < Minitest::Test

  def test_it_exists
    game = GameController.new(1..8)

    assert_instance_of GameController, game
  end

  def test_it_calculates_Fizz_result
    input = (1..4)
    game = GameController.new(input)

    assert_equal [1, 2, 'Fizz', 4], game.fizz(input)
  end

  def test_it_calculates_Buzz_result
    input = (1..6)
    game = GameController.new(input)

    result = 1, 2, 3, 4, 'Buzz', 6
    assert_equal result, game.buzz(input)
  end

  def test_it_calculates_Super_result
    input = (1..8)
    game = GameController.new(input)

    result = 1, 2, 3, 4, 5, 6, 'Super', 8
    assert_equal result, game.super_(input)
  end

  def test_it_calculates_FizzBuzz_result
    input = (14..16)
    game = GameController.new(input)
  end
end
