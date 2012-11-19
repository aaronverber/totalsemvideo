class CreateCourses < ActiveRecord::Migration
  def up
    create_table :courses do |t|
      t.string :name, :null => false
      t.string :description
      t.string :instructor
      t.timestamps
    end
  end

  def down 
    drop_table :courses
  end
end
