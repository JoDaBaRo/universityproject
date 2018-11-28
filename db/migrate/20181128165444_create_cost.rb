class CreateCost < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.decimal :total_value, null: false
      t.integer :student_id, null: false
      t.integer :practical_cost_id, null: false
      t.timestamps
    end
    add_index :costs, :student_id
    add_index :costs, :practical_cost_id
  end
end
