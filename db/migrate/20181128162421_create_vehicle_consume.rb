class CreateVehicleConsume < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_consumes do |t|
      t.integer :kilometers_traveled, null: false, default: ""
      t.integer :spent_gas, null: false
      t.string :damage_description, null: false, default: ""
      t.integer :vehicle_plate_id, null: false
      t.integer :practical_class_id, null: false
      t.timestamps
    end
    add_index :vehicle_consumes, :vehicle_plate_id
    add_index :vehicle_consumes, :practical_class_id
  end
end
