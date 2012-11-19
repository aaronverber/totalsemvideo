ActiveAdmin.register User do
  form do |f|
    f.inputs "User Information" do
      f.input :login
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    # f.has_many :courses do |course|
    #   course.inputs "Courses" do
    #     course.input :name
    #     #repeat as necessary for all fields
    #   end
    # end
    f.buttons
  end

  index do
    column :id do |user|
      link_to user.id, admin_user_path(user)
    end
    column :login
    column :email
  end

  show do 
    attributes_table do
      row :login
      row :email
      panel "Courses" do
        table_for user.courses do
          column "name" do |course|
            course.name
          end
        end
      end
    end
  end
end
