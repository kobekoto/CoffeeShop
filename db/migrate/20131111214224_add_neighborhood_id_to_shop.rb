class AddNeighborhoodIdToShop < ActiveRecord::Migration
  def change
    add_column :shops, :neighborhood_id, :integer
  end
end
