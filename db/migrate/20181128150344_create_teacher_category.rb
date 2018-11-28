class CreateTeacherCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_categories do |t|
      t.integer :teacher_id, null: false
      t.integer :licence_type_id, null: false
      t.timestamps
    end
    add_index :teacher_categories, :teacher_id
    add_index :teacher_categories, :licence_type_id
  end
end
