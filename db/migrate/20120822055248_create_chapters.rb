class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.string :number
      t.integer :course_id
      t.timestamps
    end
  end
end
