class Team < ActiveRecord::Base
	has_many :players
	belongs_to :season
	has_many :matches, through: :season
end