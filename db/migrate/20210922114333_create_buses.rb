class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|

      t.timestamps
    end
  end
end
