class CreateVehicle < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :plate, null: false
      t.string :brand, null: false, default: ""
      t.string :displacement, null: false
      t.string :name, null: false, default: ""
      t.string :model_year, null: false, default: ""
      t.integer :vehicle_category_id, null: false
      t.timestamps
    end
    add_index :vehicles, :vehicle_category_id
  end
end
