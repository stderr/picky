module Players
  class Player < ActiveRecord::Base
    belongs_to :team
    belongs_to :score
    has_many :schedulings
    has_many :games, through: :team

    paginates_per 10

    def name
      [first_name, last_name].join(" ")
    end

    def position
      self.class.name.demodulize
    end
  end
end
