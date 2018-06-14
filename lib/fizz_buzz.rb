class FizzBuzz

  def initialize
    @numbers = (1..25)
  end

  def super_fizz_buzz(numbers)
    numbers = @numbers
    fizz = fizz(numbers)
    buzz = buzz(fizz)
  #   super_ = super_(buzz)
  end

  def fizz(numbers)
    fizz = numbers.map do |num|
      if num % 3 == 0
        'Fizz'
      else
        num
      end
    end
    fizz
  end

  def buzz(fizz)
    buzz = fizz.map do |num|
      if num % 5 == 0
        'Buzz'
      else
        num
      end
    end
    buzz
  end

  def super_(buzz)
    super_ = buzz.map do |num|
      if num % 7 == 0 
        'Super'
      else
        num
      end
    end
    super_
  end

end
