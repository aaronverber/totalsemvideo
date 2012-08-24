class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, :null => false
      t.string :description
      t.string :instructor
      t.timestamps
    end
  end
end
