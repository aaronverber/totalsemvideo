ActiveAdmin.register User do
  form do |f|
    f.inputs "User Information" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
