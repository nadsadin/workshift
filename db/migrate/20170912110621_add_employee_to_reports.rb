class AddEmployeeToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :employee_id, :integer
    add_column :reports, :location_id, :integer
  end
end
