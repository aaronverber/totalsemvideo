class CreateCoursePermissions < ActiveRecord::Migration
  def change
    create_table :course_permissions do |t|
      t.integer :user_id, :null => false
      t.integer :course_id, :null => false
      t.timestamps
    end
  end
end
