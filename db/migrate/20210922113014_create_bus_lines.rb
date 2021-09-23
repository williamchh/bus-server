class CreateBusLines < ActiveRecord::Migration[6.1]
  def change
    create_table :bus_lines do |t|
      t.integer :lineNumber

      t.timestamps
    end
  end
end
