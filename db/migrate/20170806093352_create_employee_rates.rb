class CreateEmployeeRates < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_rates do |t|
      t.integer :employee_id
      t.integer :rate_id

      t.timestamps
    end
  end
end
