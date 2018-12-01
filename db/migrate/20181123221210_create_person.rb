class CreatePerson < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :last_name, null: false
      t.string :address, null: false
      t.string :phone_number, null: false, default: ""
      t.string :id_number, null: false
      t.string :role, null: false, array: true
      t.timestamps
    end
    add_index :people, :id_number, unique: true
  end
end
