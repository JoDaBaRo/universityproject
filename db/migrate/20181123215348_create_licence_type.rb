class CreateLicenceType < ActiveRecord::Migration[5.2]
  def change
    create_table :licence_types do |t|
      t.string :description, null: false
      t.timestamps
    end
  end
end
