class DeleteColumns < ActiveRecord::Migration
  def change
    remove_column :players, :team_id
    remove_column :teams, :season_id
  end
end
