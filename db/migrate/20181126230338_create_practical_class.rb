class CreatePracticalClass < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_classes do |t|
      t.string :description, null: false
      t.integer :class_length, null: false
      t.integer :licence_type_id, null: false
      t.timestamps
    end
    add_index :practical_classes, :licence_type_id
  end
end
