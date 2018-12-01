class CreateVehicleCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_categories do |t|
      t.string :vehicle_type, null: false
      t.float :hourly_rate, null: false
      t.integer :licence_type_id, null: false
      t.timestamps
    end
    add_index :vehicle_categories, :licence_type_id
  end
end
