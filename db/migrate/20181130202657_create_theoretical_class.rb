class CreateTheoreticalClass < ActiveRecord::Migration[5.2]
  def change
    create_table :theoretical_classes do |t|
      t.string :description, null: false
      t.integer :class_length, null: false
      t.timestamps
    end
  end
end
