class CreateWatcheds < ActiveRecord::Migration
  def change
    create_table :watcheds do |t|
      t.integer :user_id, :null => false
      t.integer :episode_id, :null => false
      t.timestamps
    end
  end
end
