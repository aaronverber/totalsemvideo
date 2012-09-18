ActiveAdmin.register User do
  form do |f|
    f.inputs "User Information" do
      f.input :login
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end

  index do
    column :id do |user|
      link_to user.id, admin_user_path(user)
    end
    column :login
    column :email
  end
end
