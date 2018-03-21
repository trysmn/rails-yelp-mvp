class AddNewColumnToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :img_url, :string
  end
end
