class AddBusLineToTimeSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :time_schedules, :lineNumber, :integer
    add_column :time_schedules, :routeName, :string
  end
end
