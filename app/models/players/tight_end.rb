module Players
  class TightEnd < Player

    def statistics
      @statistics ||= [:receiving_yards, :rushing_yards, :rushing_tds, :receiving_tds, :receptions]
    end

  end
end
