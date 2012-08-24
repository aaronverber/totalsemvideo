class Course < ActiveRecord::Base
  attr_accessible :name, :description, :instructor
  has_many :chapters
end
