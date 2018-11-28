class CreateTest < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :test_type, null: false
      t.integer :test_length, null: false
      t.decimal :test_value, null: false
      t.timestamps
    end
  end
end
