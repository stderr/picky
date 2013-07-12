module Players
  class Player < ActiveRecord::Base
    belongs_to :team
    has_many :games, through: :team
    has_many :schedulings, through: :games

    def name
      [first_name, last_name].join(" ")
    end
  end
end
