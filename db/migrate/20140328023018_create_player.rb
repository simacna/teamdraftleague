class CreatePlayer < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name
    	t.integer :team_id
    	t.string :bio
    end
  end
end
