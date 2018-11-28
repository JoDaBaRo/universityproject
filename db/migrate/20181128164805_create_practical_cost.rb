class CreatePracticalCost < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_costs do |t|
      t.string :description, null: false
      t.decimal :value, null: false, default: 0
      t.integer :licence_id, null: false
      t.timestamps
    end
    add_index :practical_costs, :licence_id
  end
end
