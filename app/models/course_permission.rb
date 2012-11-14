class CoursePermission < ActiveRecord::Base
  attr_accessible :user_id, :course_id
end
