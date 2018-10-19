module Players

  class Computer < Player
    def move(board)
      if board.turn_count == 0
        choice = "5"
        sleep 1
        choice

      elsif board.turn_count == 1
        choice = "3"
        sleep 1
        choice

      elsif board.turn_count == 2
        choice = stop_enemy


        sleep 1
        choice

      elsif board.turn_count == 3
        choice = stop_enemy
        sleep 1
        choice

      elsif board.turn_count == 4
        choice = stop_enemy
        sleep 1
        choice

      elsif board.turn_count == 5
        choice = stop_enemy
        sleep 1
        choice

      elsif board.turn_count == 6
        choice = stop_enemy
        sleep 1
        choice

      elsif board.turn_count == 7
        choice = stop_enemy
        sleep 1
        choice

      elsif board.turn_count == 8
        choice = stop_enemy
        sleep 1
        choice

      elsif board.turn_count == 9
        choice = stop_enemy
        sleep 1
        choice
      end

      def stop_enemy
        choice = nil
        if board.turn_count.odd?
          WIN_COMBINATIONS.each do |combo|
            if board.position(combo[0] + 1) == "X" && board.position(combo[1] + 1) == "X" && board.taken?(combo[2] + 1) == false
              choice = "#{combo[2] + 1}"
           elsif board.position(combo[1] + 1) == "X" && board.position(combo[2] + 1) == "X" && board.taken?(combo[0] + 1) == false
              choice = "#{combo[0] + 1}"
           elsif board.position(combo[0] + 1) == "X" && board.position(combo[2] + 1) == "X" && board.taken?(combo[1] + 1) == false
              choice = "#{combo[1] + 1}"
            end
          end
        elsif board.turn_count.even?
          WIN_COMBINATIONS.each do |combo|
            if board.position(combo[0] + 1) == "O" && board.position(combo[1] + 1) == "O" && board.taken?(combo[2] + 1) == false
              choice = "#{combo[2] + 1}"
           elsif board.position(combo[1] + 1) == "O" && board.position(combo[2] + 1) == "O" && board.taken?(combo[0] + 1) == false
              choice = "#{combo[0] + 1}"
           elsif board.position(combo[0] + 1) == "O" && board.position(combo[2] + 1) == "O" && board.taken?(combo[1] + 1) == false
              choice = "#{combo[1] + 1}"
            end
          end
        end
        return choice
      end         #End stop_enemy





    end     #End def move
  end     #End Class

end   #End Module











      #
      # elsif board.turn_count == 7
      #   choice = stop_enemy
      #   sleep 2
      #   choice
      #
      # elsif board.turn_count == 8
      #   choice = (1..9).to_a.sample
      #   sleep 2
      #   choice
      #
      # elsif board.turn_count == 9
      #   choice = stop_enemy
      #   sleep 2
      #   choice













# [0,1,2],  # Top Row
# [3,4,5],  # Middle Row
# [6,7,8],  # Bottom Row
# [0,4,8],  # Diagonal Right
# [2,4,6],  # Diagonal Left
# [0,3,6],  # Left Column
# [1,4,7],  # Middle Column
# [2,5,8]

# win_index_1 = combo[0] + 1
# win_index_2 = combo[1] + 1
# win_index_3 = combo[2] + 1

# def my_function
#   WIN_COMBINATIONS.each do |combo|
#     if board.position(combo[0] + 1) == "X" && board.position(combo[1] + 1) == "X"
#       return combo[2] + 1
#     elsif board.position(combo[1] + 1) == "X" && board.position(combo[2] + 1) == "X"
#       return combo[0] + 1
#     elsif board.position(combo[0] + 1) == "X" && board.position(combo[2] + 1) == "X"
#       return combo[1] + 1
#     end
#   end


# elsif board.turn_count == 8
#   choice = (1..9).to_a.sample
#   sleep 2
#   choice

  # if board.turn_count == 0
  #   choice = "5"
  #   sleep 2
  #   choice
  #
  # elsif board.turn_count == 1
  #   choice = "3"
  #   sleep 2
  #   choice
  #
  # elsif board.turn_count == 2
  #   choice = "9"
  #   sleep 2
  #   choice

  # def stop_enemy
  #   choice = nil
  #   if board.turn_count.odd?
  #     WIN_COMBINATIONS.each do |combo|
  #       if board.position(combo[0] + 1) == "X" && board.position(combo[1] + 1) == "X" && board.taken?(combo[2] + 1) == false
  #         choice = "#{combo[2] + 1}"
  #      elsif board.position(combo[1] + 1) == "X" && board.position(combo[2] + 1) == "X" && board.taken?(combo[0] + 1) == false
  #         choice = "#{combo[0] + 1}"
  #      elsif board.position(combo[0] + 1) == "X" && board.position(combo[2] + 1) == "X" && board.taken?(combo[1] + 1) == false
  #         choice = "#{combo[1] + 1}"
  #       end
  #     end
  #   elsif board.turn_count.even?
  #     WIN_COMBINATIONS.each do |combo|
  #       if board.position(combo[0] + 1) == "O" && board.position(combo[1] + 1) == "O" && board.taken?(combo[2] + 1) == false
  #         choice = "#{combo[2] + 1}"
  #      elsif board.position(combo[1] + 1) == "O" && board.position(combo[2] + 1) == "O" && board.taken?(combo[0] + 1) == false
  #         choice = "#{combo[0] + 1}"
  #      elsif board.position(combo[0] + 1) == "O" && board.position(combo[2] + 1) == "O" && board.taken?(combo[1] + 1) == false
  #         choice = "#{combo[1] + 1}"
  #       end
  #     end
  #   end
  #   choice
  # end         #End stop_enemy
