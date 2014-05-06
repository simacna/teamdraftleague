class CreateIndividualPlayerMatches < ActiveRecord::Migration
  def change
    create_table :individual_player_matches do |t|
      t.integer :player_id
      t.integer :opponent_id
      t.integer :match_id
      t.integer :winner
    end
  end
end
