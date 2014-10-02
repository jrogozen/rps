require_relative 'spec_helper.rb'

describe RockPapeScis do
  describe '#fight' do
    it 'determines a tie' do 
      result = RockPapeScis.play({
        player_1: {username: "Jon", move: "rock"}, 
        player_2: {username: "DJ", move: "rock"}
      })
      expect(result).to eq("tie")
    end

    it 'determines paper beats rock' do
      result = RockPapeScis.play({
        player_1: {username: "Jon", move: "rock"}, 
        player_2: {username: "DJ", move: "paper"}
      }) 
      expect(result).to eq("DJ")
    end

     it 'determines rock beats scissor' do
      result = RockPapeScis.play({
        player_1: {username: "Jon", move: "rock"}, 
        player_2: {username: "DJ", move: "scissor"}
      }) 
      expect(result).to eq("Jon")
    end

     it 'determines scissor beats paper' do
      result = RockPapeScis.play({
        player_1: {username: "Jon", move: "paper"}, 
        player_2: {username: "DJ", move: "scissor"}
      }) 
      expect(result).to eq("DJ")
    end

  end
end

