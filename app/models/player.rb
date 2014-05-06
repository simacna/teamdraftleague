# == Schema Information
#
# Table name: players
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  team_id :integer
#  bio     :text
#

class Player < ActiveRecord::Base
	
	belongs_to :user
  has_many :player_team_histories
  has_many :teams, through: :player_team_histories
  has_many :seasons, through: :player_team_histories

	validates(:name,     { :presence     => true })

end
