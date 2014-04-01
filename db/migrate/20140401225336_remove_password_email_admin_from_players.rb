class RemovePasswordEmailAdminFromPlayers < ActiveRecord::Migration
  def change
  	remove_column :players, :email
  	remove_column :players, :password_digest
  	remove_column :players, :admin
  end
end
