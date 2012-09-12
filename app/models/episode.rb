class Episode < ActiveRecord::Base
  attr_accessible :name, :number, :length, :description, :video_url, :chapter, :chapter_id, :watchedm
  belongs_to :chapter

  has_many :watcheds
  has_many :users, :through => :watcheds

  def watched?(user)
    Watched.where({:user_id => user.id, :episode_id => id}).count > 0
  end
    
end
