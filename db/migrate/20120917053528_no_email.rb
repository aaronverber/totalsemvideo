class NoEmail < ActiveRecord::Migration
  def up
    add_column :users, :login, :string, :null => true
    change_column :users, :email, :string, :null => true
  end

  def down
    remove_column :users, :login
    change_column :users, :email, :string, :null => false
  end
end
