class ChangeCatagoryInRestaurant < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :catagory, :category
  end
end
