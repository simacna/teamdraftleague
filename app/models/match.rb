class Match < ActiveRecord::Base
	belongs_to :season
	has_many :teams, through: :season

end