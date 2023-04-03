class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.integer :category_id

      t.timestamps
    end
    add_index :items, :category_id
  end
end
