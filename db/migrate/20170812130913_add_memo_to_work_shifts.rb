class AddMemoToWorkShifts < ActiveRecord::Migration[5.1]
  def change
    add_column :work_shifts, :memo, :string
  end
end
