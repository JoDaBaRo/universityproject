class CreatePracticalLicenceClass < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_licence_classes do |t|
      t.integer :licence_type_id, null: false
      t.integer :practical_class_id, null: false
      t.timestamps
    end
    add_index :practical_licence_classes, :licence_type_id
    add_index :practical_licence_classes, :practical_class_id
  end
end
