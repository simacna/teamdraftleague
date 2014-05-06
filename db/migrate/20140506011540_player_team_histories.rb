class PlayerTeamHistories < ActiveRecord::Migration
  def change
    create_table :player_team_histories do |t|
      t.integer :player_id
      t.integer :team_id
      t.integer :season_id
    end
  end
end
