class AddWatchedToEpisodes < ActiveRecord::Migration
  def change
    change_table :episodes do |t|
      t.boolean :watched, :default => false
    end
  end
end
