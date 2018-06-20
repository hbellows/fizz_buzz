require './lib/game_controller'


  puts "Please enter a number, or a range of numbers:"
  print '> '
  user_input = gets.chomp
  input = user_input.split.map {|num| num.to_i}
  game = GameController.new(input)

  if input.length == 1
    puts "Here are your results: \n #{game.output(input)}"
  else
    puts "Here are your results: \n #{game.output_range(input[0], input[1])}"
  end
