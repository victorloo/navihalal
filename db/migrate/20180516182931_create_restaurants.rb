class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :intro
      t.string :photo
      t.date :open_hour
      t.date :close_hour
      t.string :address
      t.string :tel
      t.integer :viewed_count
      t.integer :user_id
      t.integer :lat
      t.integer :lon

      t.timestamps
    end
  end
end
