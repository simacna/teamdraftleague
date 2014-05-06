class IndividualPlayerMatch < ActiveRecord::Base

  belongs_to :player
  belongs_to :opponent, class_name: "Player", foreign_key: "opponent_id"
  belongs_to :match
  
end