require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_controller'

class GameControllerTest < Minitest::Test

  def test_it_exists
    skip
    input = '7'
    game = GameController.new(input)

    assert_instance_of GameController, game
  end

  def test_it_can_calculate_Super_result # divisible by 7
    skip
    input = [7]
    game = GameController.new(input)

    assert_equal ['Super'], game.divisible_by_seven
  end

  def test_it_can_calculate_Fizz_result # divisible by 3
    skip
    input = [3]
    game = GameController.new(input)

    assert_equal ['Fizz'], game.divisble_by_three
  end

  def test_it_can_calculate_Buzz_result # divisible by 5
    skip
    input = [5]
    game = GameController.new(input)

    assert_equal ['Buzz'], game.divisible_by_five
  end

  def test_it_can_determine_when_a_number_needs_no_converstion
    skip
    input = [4]
    game = GameController.new(input)

    assert_equal '4', game.no_conversion
  end

  def test_it_can_calculate_SuperFizzBuzz_result # div by 7, 3, 5
    skip
    input = [105]
    game = GameController.new(input)

    assert_equal 'SuperFizzBuzz', game.output(input)
  end

  def test_it_can_calculate_SuperFizz_result # divisible by 7, 3
    skip
    input = [21]
    game = GameController.new(input)

    assert_equal 'SuperFizz', game.output(input)
  end

  def test_it_can_calculate_SuperBuzz_result # divisible by 7, 5
    skip
    input = [35]
    game = GameController.new(input)

    assert_equal 'SuperBuzz', game.output(input)
  end

  def test_it_can_calculate_FizzBuzz_result # divisible by 3, 5
    skip
    input = [15]
    game = GameController.new(input)

    assert_equal 'FizzBuzz', game.output(input)
  end

  def test_it_can_calculate_the_results_of_a_range_of_digits
    # skip
    input = [105, 108]
    game = GameController.new(input)

    result = ['SuperFizzBuzz', '106', '107', 'Fizz']
    assert_equal result, game.output_range(input[0], input[1])

  end

end
