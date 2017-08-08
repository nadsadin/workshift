class DeleteParentIdFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :parent_id, :bigint
    add_column :locations, :ancestry, :string
    add_index :locations, :ancestry
  end
end
