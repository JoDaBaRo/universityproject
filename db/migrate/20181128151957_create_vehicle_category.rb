class CreateVehicleCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_categories do |t|
      t.string :description, null: false
      t.float :hourly_rate, null: false
      t.integer :licence_id, null: false
      t.timestamps
    end
    add_index :vehicle_categories, :licence_id
  end
end
