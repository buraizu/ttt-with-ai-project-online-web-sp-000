class Cli

  def play_game
    loop do
      puts "Welcome to TicTacToe.  Enter '0' for a simulated game, '1' for a one-player game, and '2' for a two-player game. Enter 'exit' to exit."
      input = gets.chomp
        if input == "0"
          game = Game.new(Players::Computer.new("X"), Players::Computer.new("O"))
          game.play
        elsif input == "1"
          game = Game.new(Players::Computer.new("X"), Players::Human.new("O"))
          game.play
        elsif input == "2"
          game = Game.new(Players::Human.new("X"), Players::Human.new("O"))
          game.play
        elsif input.downcase == nil && input == 'exit'
          break
        elsif input.downcase! == 'exit'
          break

        end

    end

  end

end
