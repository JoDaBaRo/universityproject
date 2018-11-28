class CreateClassTeacher < ActiveRecord::Migration[5.2]
  def change
    create_table :class_teachers do |t|
      t.integer :practical_class_id, null: false
      t.integer :teacher_category_id, null: false
      t.integer :vehicle_plate_id, null: false
      t.timestamps
    end
    add_index :class_teachers, :practical_class_id
    add_index :class_teachers, :teacher_category_id
    add_index :class_teachers, :vehicle_plate_id
  end
end
