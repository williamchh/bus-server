class AddBusRoutesToBusLines < ActiveRecord::Migration[6.1]
  def change
    add_column :bus_lines, :busRoutes, :string
  end
end
