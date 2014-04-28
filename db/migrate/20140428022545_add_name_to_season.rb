class AddNameToSeason < ActiveRecord::Migration
  def change
    add_column :seasons, :name, :string
  end
end
