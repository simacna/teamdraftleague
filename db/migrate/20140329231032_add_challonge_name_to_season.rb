class AddChallongeNameToSeason < ActiveRecord::Migration
  def change
  	change_table :seasons do |t|
  		add_column :seasons, :challonge_name, :string
  	end
  end
end
