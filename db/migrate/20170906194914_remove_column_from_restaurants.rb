class RemoveColumnFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :restaurant_id, :integer
  end
end
