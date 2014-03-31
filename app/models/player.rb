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
	has_secure_password
	belongs_to :team
end
