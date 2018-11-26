class CreateControlTest < ActiveRecord::Migration[5.2]
  def change
    create_table :control_tests do |t|
      t.string :description, null: false
      t.integer :test_length, null: false
      t.timestamps
    end
  end
end
