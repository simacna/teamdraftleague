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
	belongs_to :team
	belongs_to :user
end
