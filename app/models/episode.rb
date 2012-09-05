class Episode < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :number, :length, :description, :video_url, :chapter, :watched
  belongs_to :chapter
end
