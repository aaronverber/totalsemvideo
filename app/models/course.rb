class Course < ActiveRecord::Base
  attr_accessible :name, :description, :instructor, :course_permissions_attributes
  has_many :chapters
  has_many :course_permissions
  has_many :users, :through => :course_permissions

  accepts_nested_attributes_for :users
  accepts_nested_attributes_for :course_permissions
end
