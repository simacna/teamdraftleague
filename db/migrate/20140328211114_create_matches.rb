class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
    	t.integer :team1
    	t.integer :team2
    	t.integer :winner
    	t.integer :season_id
    	t.integer :challonge_match_number
    	t.text :challonge_match_csv
    	t.integer :challonge_week
    end
  end
end
