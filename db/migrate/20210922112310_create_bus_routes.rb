class CreateBusRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :bus_routes do |t|
      t.string :routeName

      t.timestamps
    end
  end
end
