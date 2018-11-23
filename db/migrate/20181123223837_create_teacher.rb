class CreateTeacher < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :person_id, null: false
      t.timestamps
    end
    add_index :teachers, :person_id
  end
end
