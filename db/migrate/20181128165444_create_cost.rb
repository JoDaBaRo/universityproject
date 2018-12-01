class CreateCost < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.decimal :total_value, null: false
      t.integer :enrollment_id, null: false
      t.timestamps
    end
    add_index :costs, :enrollment_id
  end
end
