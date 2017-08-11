class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.date :start_date
      t.date :end_date
      t.string :location

      t.timestamps
    end
  end
end
