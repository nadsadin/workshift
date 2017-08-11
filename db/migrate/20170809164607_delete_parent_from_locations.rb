class DeleteParentFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :ancestry, :string
  end
end
