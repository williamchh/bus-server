class AddTimescheduleToBus < ActiveRecord::Migration[6.1]
  def change
    add_column :buses, :lineNumber, :integer
    add_column :buses, :route, :string
    add_column :buses, :time_schedules_id, :integer
    add_index :buses, :time_schedules_id
  end
end
