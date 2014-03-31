class AddTeamsToSeasons < ActiveRecord::Migration
  def change
  	change_table :seasons do |t|
  		add_column :seasons, :num_teams, :integer
  	end
  end
end
