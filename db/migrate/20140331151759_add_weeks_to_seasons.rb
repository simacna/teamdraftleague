class AddWeeksToSeasons < ActiveRecord::Migration
  def change
  	change_table :seasons do |t|
  		add_column :seasons, :num_weeks, :integer
  	end
  end
end
