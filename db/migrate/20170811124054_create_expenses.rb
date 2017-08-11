class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.integer :employee_id
      t.date :date
      t.decimal :amount
      t.text :memo

      t.timestamps
    end
  end
end
