module ScoringSystems
  class Standard < ScoringSystem

    def initialize(position)
      @passing_yards = 0.04
      @receptions = 0.0
      @rushing_yards = 0.1
      @receiving_yards = 0.1

      @passing_tds = 4.0
      @receiving_tds = 6.0
      @rushing_tds = 6.0
    end

  end
end
