class AddColumnsToWorkShifts < ActiveRecord::Migration[5.1]
  def change
    add_column :work_shifts, :min, :integer
    add_column :work_shifts, :cost, :decimal
  end
end
