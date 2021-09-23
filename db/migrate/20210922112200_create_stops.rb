class CreateStops < ActiveRecord::Migration[6.1]
  def change
    create_table :stops do |t|
      t.string :code
      t.integer :sequence

      t.timestamps
    end
  end
end
