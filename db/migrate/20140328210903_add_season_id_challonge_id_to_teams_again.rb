class AddSeasonIdChallongeIdToTeamsAgain < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		t.integer :season_id
  		t.integer :challonge_team_number
  	end
  end
end
