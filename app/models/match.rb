class Match < ActiveRecord::Base
	belongs_to :season
	has_one :team, through: :season
	has_one :challenger, class_name: "Team", foreign_key: "challenger_id", through: :season

end