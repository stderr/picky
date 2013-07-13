module Players
  class Quarterback < Player

    def statistics
      @statistics ||= [:passing_yards, :rushing_yards, :rushing_tds, :passing_tds]
    end

  end
end
