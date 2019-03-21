class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :supporter_id, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
