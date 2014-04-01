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
	belongs_to :team
	belongs_to :challenger, class_name: "Team", foreign_key: "challenger_id"

end
