class AddChallongeNumbersToMatch < ActiveRecord::Migration
  def change
  		change_table :matches do |t|
  			add_column :matches, :team_challonge_number, :integer
  			add_column :matches, :challnger_challonge_number, :integer
  		end
  end
end
