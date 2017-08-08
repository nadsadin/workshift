class CreateWorkShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :work_shifts do |t|
      t.integer :employee_id
      t.integer :rate_id
      t.integer :location_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
