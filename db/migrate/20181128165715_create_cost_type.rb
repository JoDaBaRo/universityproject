class CreateCostType < ActiveRecord::Migration[5.2]
  def change
    create_table :cost_types do |t|
      t.integer :general_cost_id, null: false
      t.integer :cost_id, null: false
      t.timestamps
    end
    add_index :cost_types, :general_cost_id
    add_index :cost_types, :cost_id
  end
end
