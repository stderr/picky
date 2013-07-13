class Scheduling < ActiveRecord::Base
  belongs_to :player, class_name: "Players::Player"
  belongs_to :game
  belongs_to :score

  validates_presence_of :player, :game
end
