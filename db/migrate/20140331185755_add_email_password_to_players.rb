class AddEmailPasswordToPlayers < ActiveRecord::Migration
  def change
  	change_table :players do |t|
  		t.text :email
  		t.text :password_digest
  		t.boolean :admin, :default => false
  	end
  end
end
