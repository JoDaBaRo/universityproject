class AddUniqueToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_index :vehicles, :plate, unique: true
  end
end
