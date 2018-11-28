class CreateGeneralCost < ActiveRecord::Migration[5.2]
  def change
    create_table :general_costs do |t|
      t.string :description, null: false
      t.decimal :value, null: false, default: 0
      t.timestamps
    end
  end
end
