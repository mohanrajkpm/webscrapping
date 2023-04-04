class AddUserIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :user_id, :integer, :null => false, :default => 1
  end
end
