class ChangeMatchesTeamIds < ActiveRecord::Migration
  def change
  	rename_column :matches, :team1, :team_id
  	rename_column :matches, :team2, :challenger_id
  end
end
