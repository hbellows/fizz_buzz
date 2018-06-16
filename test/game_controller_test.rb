require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_controller.rb'

class GameControllerTest < Minitest::Test

  def test_it_exists
    game = GameController.new(1..8)

    assert_instance_of GameController, game
  end

  def test_it_can_calculate_Super_result
    # divisible by 7
    # skip
    input = (6..8)
    game = GameController.new(input)

    assert_equal ['Super'], game.divisible_by_seven(input)
  end

  def test_it_can_calculate_Buzz_result
    # divisible by 5
    skip
    input = (5)
    game = GameController.new(input)


    assert_equal 'Buzz', game.divisible_by_five(input)
  end

  def test_it_can_calculate_Fizz_result
    # divisible by 3
    skip
    input = (3)
    game = GameController.new(input)

    assert_equal 'Fizz', game.divisble_by_three(input)
  end

  def test_it_can_calculate_SuperFizzBuzz_result
    # divisible by 7, 5, 3
    skip
    input = (104..106)
    game = GameController.new(input)

    result = 104, 'SuperFizzBuzz', 106
    assert_equal result, game.find_super_fizz_buzz(input)
  end

  def test_it_can_calculate_SuperFizz_result
    # divisible by 7, 3
    skip
    input = (20..22)
    game = GameController.new(input)

    result = 20, 'SuperFizz', 22
    assert_equal result, game.find_super_fizz(input)
  end

  def test_it_can_calculate_SuperBuzz_result
    # divisible by 7, 5
    skip
    input = (34..36)
    game = GameController.new(input)

    result = 34, 'SuperBuzz', 36
    assert_equal result, game.find_super_buzz(input)
  end

  def test_it_can_calculate_FizzBuzz_result
    # divisible by 5, 3
    skip
    input = (14..16)
    game = GameController.new(input)

    result = 14, 'FizzBuzz', 16
   assert_equal result, game.find_fizz_buzz(input)
  end

end
