class CoursePermission < ActiveRecord::Base
  attr_accessible :user_id, :course_id
  belongs_to :user
  belongs_to :course
end
