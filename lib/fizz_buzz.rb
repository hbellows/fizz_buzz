require './lib/game_controller'
class FizzBuzz

  def play_game#(input)
    input = gets.chomp.split
    range = (input[0]..input[1]).map(&:to_i)
    game = GameController.new(range)
  end

end
fb = FizzBuzz.new
fb.play_game

# ----------------------------------
# def game
#   1000.times do |num|
#   fizz_buzz = FizzBuzz.new(num)
#   fizz_buzz.start
# end
# ----------------------------------
# numbers = @input
# fizzy = game.find_fizz(range)
# buzzy = game.find_buzz(fizzy)
# supery = game.find_super(buzzy)
# fizzy_buzzy = game.find_fizz_buzz(supery)
# super_buzzy = game.find_super_buzz(fizzy_buzzy)
# super_fizzy = game.find_super_fizz(super_buzzy)
# super_fizzy_buzzy = game.find_super_fizz_buzz(super_fizzy)
