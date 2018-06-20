# require './lib/fizz_buzz'

class GameController

  attr_reader :input

  def initialize(input)
    @input = input
    @converted_num = ""
    @result = []
  end

  def output(input)
    input.map do |num|
      play_game
    end
    @result.join
  end

  def output_range (starting, ending)
    range = (starting..ending)
    range.to_a.map do |number|
      @input = number.to_s.split.map {|n| n.to_i}
        play_game

      # require "pry"; binding.pry
    end
    @result
  end

  def play_game
    divisible_by_seven
    divisble_by_three
    divisible_by_five
    no_conversion
  end

  def divisible_by_seven
    @input.map do |number|
      if number % 7 == 0
        @result << 'Super'
      end
    end.flatten
  end

  def divisble_by_three
    @input.map do |number|
      if number % 3 == 0
        @result << 'Fizz'
      end
    end.flatten
  end

  def divisible_by_five
    @input.map do |number|
      if number % 5 == 0
        @result << 'Buzz'
      end
    end.flatten
  end

  def no_conversion
    @input.each do |number|
      if number % 7 != 0 && number % 3 != 0 && number % 5 != 0
        @result << number.to_s
        # @result << @converted_num
      end
    end.flatten.join
    # require "pry"; binding.pry
    # @converted_num
  end

end
