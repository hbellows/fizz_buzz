require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_controller.rb'

class GameControllerTest < Minitest::Test

  def test_it_exists
    skip
    input = '7'
    game = GameController.new(input)

    assert_instance_of GameController, game
  end

  def test_it_can_calculate_Super_result # divisible by 7
    skip
    input = '7'
    game = GameController.new(input)

    assert_equal ['Super'], game.divisible_by_seven([7])
  end

  def test_it_can_calculate_Fizz_result # divisible by 3
    skip
    input = '3'
    game = GameController.new(input)

    assert_equal ['Fizz'], game.divisble_by_three([3])
  end

  def test_it_can_calculate_Buzz_result # divisible by 5
    skip
    input = '5'
    game = GameController.new(input)

    assert_equal ['Buzz'], game.divisible_by_five([5])
  end

  def test_it_can_calculate_SuperFizzBuzz_result # 7, 3, 5
    skip
    input = '105'
    game = GameController.new(input)

    assert_equal 'SuperFizzBuzz', game.play_game(input)
  end

  def test_it_can_calculate_SuperFizz_result # divisible by 7, 3
    skip
    input = '21'
    game = GameController.new(input)

    assert_equal 'SuperFizz', game.play_game(input)
  end

  def test_it_can_calculate_SuperBuzz_result # divisible by 7, 5
    skip
    input = '35'
    game = GameController.new(input)

    assert_equal 'SuperBuzz', game.play_game(input)
  end

  def test_it_can_calculate_FizzBuzz_result # divisible by 3, 5
    skip
    input = '15'
    game = GameController.new(input)

    assert_equal 'FizzBuzz', game.play_game(input)
  end

  def test_it_can_play_game_with_a_range_of_numbers
    # skip
    input = '2'..'8'
    game = GameController.new(input)

    result = 2, 'Fizz', 4, 'Buzz', 'Fizz', 'Super', 8
    assert_equal result, game.play_game(input)
  end

end
