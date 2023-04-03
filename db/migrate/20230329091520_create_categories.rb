class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :restaurant_id
      t.string :name

      t.timestamps
    end
    add_index :categories, :restaurant_id
  end
end
