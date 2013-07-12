module Players
  class Player < ActiveRecord::Base
    belongs_to :team
    has_many :games, through: :team
    has_many :schedulings, through: :games

    paginates_per 10

    def name
      [first_name, last_name].join(" ")
    end

    def position
      self.class.name.demodulize
    end
  end
end
