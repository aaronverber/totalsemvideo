ActiveAdmin.register Course do
  form do |f|
    f.inputs "Details"
    f.has_many :course_permissions do |perm|
      perm.input :user
      perm.input :course
    end
    f.buttons
  end
end
