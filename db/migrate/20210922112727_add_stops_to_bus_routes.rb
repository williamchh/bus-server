class AddStopsToBusRoutes < ActiveRecord::Migration[6.1]
  def change
    add_column :bus_routes, :stops, :string
  end
end
