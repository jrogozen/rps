require "rock_pape_scis/version"

module RockPapeScis
  
  def self.play(opts)
    player_1 = opts[:player_1][:username]
    player_2 = opts[:player_2][:username]

    fight(opts[:player_1], opts[:player_2])
  end

  def self.fight(player_1, player_2)
    # return dat tie
    move1 = player_1[:move]
    move2 = player_2[:move]

    if move1 == move2
      return "tie"
    end

    if move1 == "rock"
      if move2 == "scissor"
        return player_1[:username]
      else
        return player_2[:username]
      end
    end

    if move1 == "paper"
      if move2 == "rock"
        return player_1[:username]
      else
        return player_2[:username]
      end
    end

    if move1 == "scissor"
      if move2 == "paper"
        return player_1[:username]
      else
        return player_2[:username]
      end
    end
  end


end
