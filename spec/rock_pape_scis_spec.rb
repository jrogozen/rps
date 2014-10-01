require_relative 'spec_helper.rb'

describe RockPapeScis do
  describe RockPapeScis::RPS do
    let(:rps) {RockPapeScis::RPS.new}
    describe '#play' do 
      it 'assigns players to variables' do 
        rps = RockPapeScis::RPS.new
        rps.play({
          player_1: {name: "Jon", move: "paper"}, 
          player_2: {name: "DJ", move: "rock"}
        })
        expect(rps.player_1).to eq("Jon")
        expect(rps.player_2).to eq("DJ")
      end
    end

    describe '#fight' do
      it 'determines a tie' do 
        result = rps.play({
          player_1: {name: "Jon", move: "rock"}, 
          player_2: {name: "DJ", move: "rock"}
        })
        expect(result).to eq("tie")
      end

      it 'determines paper beats rock' do
        result = rps.play({
          player_1: {name: "Jon", move: "rock"}, 
          player_2: {name: "DJ", move: "paper"}
        }) 
        expect(result).to eq("DJ")
      end

       it 'determines rock beats scissor' do
        result = rps.play({
          player_1: {name: "Jon", move: "rock"}, 
          player_2: {name: "DJ", move: "scissor"}
        }) 
        expect(result).to eq("Jon")
      end

       it 'determines scissor beats paper' do
        result = rps.play({
          player_1: {name: "Jon", move: "paper"}, 
          player_2: {name: "DJ", move: "scissor"}
        }) 
        expect(result).to eq("DJ")
      end

    end
  end
end

