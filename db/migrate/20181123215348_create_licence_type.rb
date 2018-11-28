class CreateLicenceType < ActiveRecord::Migration[5.2]
  def change
    create_table :licence_types do |t|
      t.string :allowed_vehicules, null: false
      t.string :category, null: false
      t.string :service_type, null: false
      t.timestamps
    end
  end
end
