class CreateCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :person_id, null: false
      t.timestamps
    end
    add_index :customers, :person_id
  end
end
