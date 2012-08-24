class Episode < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :number, :length, :description, :video_url, :chapter
  belongs_to :chapter
      # t.string :name
      # t.integer :number
      # t.integer :length
      # t.string :description
      # t.string :video_url
      # t.integer :chapter_id

end
