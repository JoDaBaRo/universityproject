class CreateLicenceType < ActiveRecord::Migration[5.2]
  def change
    create_table :licence_types do |t|
      t.string :allowed_vehicles, null: false
      t.string :category, null: false
      t.string :service_type, null: false
      t.decimal :licence_cost, null: false
      t.integer :practical_hours, null: false
      t.timestamps
    end
  end
end
