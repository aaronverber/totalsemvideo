class AddFreeness < ActiveRecord::Migration
  def up
    add_column :episodes, :free, :boolean
  end

  def down
    remove_column :episodes, :free
  end
end
