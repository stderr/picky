module Players
  class Player < ActiveRecord::Base
    belongs_to :team
    belongs_to :score
    has_many :schedulings
    has_many :games, through: :team
    has_many :scores, through: :schedulings

    paginates_per 10

    def name
      [first_name, last_name].join(" ")
    end

    def position
      @position ||= self.class.name.demodulize
    end

    def shortened_position
      @acronym ||= begin
        return "QB" if position == 'Quarterback'
        position.scan(/\p{Upper}/)
      end
    end

    def total_score_for(game, scoring_system = ScoringSystems::Standard)
      system = scoring_system.new(position)
      score = self.schedulings.find_by(game: game).score

      statistics.reduce(0.0) do |total, stat|
        total += (score.send(stat) * system.send(stat))
        total
      end
    end

    def statistics
      @statistics ||= []
    end
  end
end
