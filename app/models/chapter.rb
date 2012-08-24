class Chapter < ActiveRecord::Base
  attr_accessible :name, :number, :course
  belongs_to :course
  has_many :episodes
end
