class CreateStudent < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :person_id, null: false
      t.timestamps
    end
    add_index :students, :person_id
  end
end
