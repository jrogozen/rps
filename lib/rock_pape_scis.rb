require "rock_pape_scis/version"

module RockPapeScis
  # Your code goes here...
  class RPS
    attr_reader :player_1, :player_2

    def play(opts)
      @player_1 = opts[:player_1][:name]
      @player_2 = opts[:player_2][:name]

      fight(opts[:player_1], opts[:player_2])
    end

    def fight(player_1, player_2)
      # return dat tie
      move1 = player_1[:move]
      move2 = player_2[:move]

      if move1 == move2
        return "tie"
      end

      if move1 == "rock"
        if move2 == "scissor"
          return player_1[:name]
        else
          return player_2[:name]
        end
      end

      if move1 == "paper"
        if move2 == "rock"
          return player_1[:name]
        else
          return player_2[:name]
        end
      end

      if move1 == "scissor"
        if move2 == "paper"
          return player_1[:name]
        else
          return player_2[:name]
        end
      end
    end

  end
end
