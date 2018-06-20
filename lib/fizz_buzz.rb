require './lib/game_controller'

  puts "Please play my game!"
  puts "The game accepts either a single number, or a range of numbers."
  puts "To enter a single number, simply enter the number."
  puts "To enter a range of numbers, enter the first and last numbers of the range, separated by a space (the range of 1-25, would be 1 25)."
  puts "\n"
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
