class CreateTimeSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :time_schedules do |t|
      t.integer :arriveHours
      t.integer :arriveMinutes
      t.string :firstStopCode

      t.timestamps
    end
  end
end
