class Prediction < ActiveRecord::Base
  belongs_to :user 
  belongs_to :score
  belongs_to :player, class_name: "Players::Player"

  accepts_nested_attributes_for :score
end
