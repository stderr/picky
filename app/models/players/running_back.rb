module Players
  class RunningBack < Player
    def statistics
      @statistics ||= [:receiving_yards, :rushing_yards, :rushing_tds, :receiving_tds]
    end
  end
end
