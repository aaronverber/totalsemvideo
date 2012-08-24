class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.integer :number
      t.integer :length
      t.string :description
      t.string :video_url
      t.integer :chapter_id
      t.timestamps
    end
  end
end
