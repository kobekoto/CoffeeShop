class AddDetailsToShops < ActiveRecord::Migration
  def change
    add_column :shops, :url, :string
    add_column :shops, :hours, :string
    add_column :shops, :foursquare_rating, :float
  end
end
