class Course < ActiveRecord::Base
  attr_accessible :name, :description, :instructor
  has_many :chapters
  has_many :course_permissions
  has_many :users, :through => :course_permissions
end
