class GameController

  def initialize(input)
    @input = input.split.map {|num| num.to_i}
    @output = ""
  end

  def play_game(input)
    input = @input
    divisible_by_seven(input)
    divisble_by_three(input)
    divisible_by_five(input)
    @output
  end

  def divisible_by_seven(input)
    input.map do |num|
      if num % 7 == 0
        @output << 'Super'
      end
    end
  end

  def divisble_by_three(input)
    # require "pry"; binding.pry
    input.map do |num|
      if num % 3 == 0
        @output << 'Fizz'
      end
    end
  end

  def divisible_by_five(input)
    input.map do |num|
      if num % 5 == 0
        @output << 'Buzz'
      end
    end
  end
end


  # def find_fizz_buzz(supery)
  #   # fizzy_buzzy =
  #   supery.map do |num|
  #     if num % 3 == 0 && num % 5 == 0
  #       "FizzBuzz"
  #     else
  #       num
  #     end
  #   end
  # end
  #
  # def find_super_buzz(fizzy_buzzy)
  #   # super_buzzy =
  #   fizzy_buzzy.map do |num|
  #     if num % 5 == 0 && num % 7 == 0
  #       "SuperBuzz"
  #     else
  #       num
  #     end
  #   end
  # end
  #
  # def find_super_fizz(super_buzzy)
  #   # super_fizzy =
  #   super_buzzy.map do |num|
  #     if num % 3 == 0 && num % 7 == 0
  #       'SuperFizz'
  #     else
  #       num
  #     end
  #   end
  # end
  #
  # def find_super_fizz_buzz(super_fizzy)
  #   # super_fizzy_buzzy =
  #   super_fizzy.map do |num|
  #     if num % 3 == 0 && num % 5 == 0 && num % 7 == 0
  #       'SuperFizzBuzz'
  #     else
  #       num
  #     end
  #   end
  # end


# A number has a corresponding output. The rules for determining the output are as follows:
#
# If it’s evenly divisible by 3, 5, and 7 the output is SuperFizzBuzz
#   first instance of SuperFizzBuzz is 105
# If it’s evenly divisible by 3 and 7 the output is SuperFizz
#   first instance of SuperFizz is 21
# If it’s evenly divisible by 5 and 7 the output is SuperBuzz
#   fist instance of SuperBuzz is 35
# If it’s evenly divisible by 3 and 5 the output is FizzBuzz
#   first instance of FizzBuzz is 15
# If it’s evenly divisible by 3, the output is Fizz
# If it’s evenly divisible by 5, the output is Buzz
# If it’s evenly divisible by 7, the output is Super
# Otherwise the output is just the number
