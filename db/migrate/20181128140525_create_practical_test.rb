class CreatePracticalTest < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_tests do |t|
      t.string :description, null: false
      t.integer :test_length, null: false
      t.decimal :test_value, null: false
      t.timestamps
    end
  end
end
