class ChangePlayerBioToText < ActiveRecord::Migration
  def change
  	change_column :players, :bio, :text
  end
end
