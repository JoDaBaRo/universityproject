class CreateLicence < ActiveRecord::Migration[5.2]
  def change
    create_table :licences do |t|
      t.string :description, null: false, default: ''
      t.integer :licence_type_id, null: false
      t.timestamps
    end
    add_index :licences, :licence_type_id
  end
end
