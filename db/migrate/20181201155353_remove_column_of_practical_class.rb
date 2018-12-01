class RemoveColumnOfPracticalClass < ActiveRecord::Migration[5.2]
  def change
    remove_column :practical_classes, :licence_type_id
  end
end
