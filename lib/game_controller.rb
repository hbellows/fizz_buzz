class GameController

  def initialize(input)
    @numbers = input
    #@numbers = (1..25)
  end

  def fizz(numbers)
    numbers = @numbers
    fizz = numbers.map do |num|
      if num % 3 == 0
        'Fizz'
      else
        num
      end
    end
    # fizz
  end

  def buzz(fizz)
    buzz = fizz.map do |num|
      if num % 5 == 0
        'Buzz'
      else
        num
      end
    end
    # buzz
  end

  def super_(buzz)
    super_ = buzz.map do |num|
      if num % 7 == 0
        'Super'
      else
        num
      end
    end
    # super_
  end

  def fizz_buzz
    # divisble by 3 and 5, first instance is 15

  end

end
