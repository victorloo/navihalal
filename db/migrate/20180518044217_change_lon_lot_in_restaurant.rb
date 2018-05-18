class ChangeLonLotInRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :longitude, :float
    add_column :restaurants, :latitude, :float
    remove_column :restaurants, :lon
    remove_column :restaurants, :lat
  end
end
