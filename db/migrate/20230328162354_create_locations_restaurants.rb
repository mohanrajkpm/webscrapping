class CreateLocationsRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.timestamps
    end

    create_table :locations do |t|
      t.string :city
      t.string :state
      t.timestamps
    end

    create_table :locations_restaurants do |t|
      t.belongs_to :location
      t.belongs_to :restaurant
    end
  end
end
