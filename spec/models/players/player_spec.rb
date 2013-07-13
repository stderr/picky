require 'spec_helper'
module Players
  describe Player do
    subject { create(:receiver) }

    context "having played a game" do
      let(:game) { create(:game) }
      let(:scheduling) { create(:scheduling, player: subject, game: game ) }

      before(:each) do
        scheduling.score.receiving_tds = 2
        scheduling.score.receiving_yards = 100 
        scheduling.score.receptions = 10
        scheduling.score.save
      end

      context "scored in standard format" do
        it "has a correct score" do
          subject.total_score_for(game).should eq(22)
        end
      end

      context "scored in PPR format" do
        it "has a correct score" do
          subject.total_score_for(game, ScoringSystems::Ppr).should eq(32)
        end
      end
   end
  end
end
