# == Schema Information
#
# Table name: matches
#
#  id                     :integer          not null, primary key
#  team_id                :integer
#  challenger_id          :integer
#  winner                 :integer
#  season_id              :integer
#  challonge_match_number :integer
#  challonge_match_csv    :text
#  challonge_week         :integer
#

class Match < ActiveRecord::Base
	belongs_to :season
	has_one :team, :through => :season
	has_one :challenger, class_name: "Team", foreign_key: "challenger_id", through: :season

end
