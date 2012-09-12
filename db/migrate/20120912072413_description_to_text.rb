class DescriptionToText < ActiveRecord::Migration
  def up
    change_column :episodes, :description, :text
  end

  def down
    change_column :episodes, :descripton, :string
  end
end
