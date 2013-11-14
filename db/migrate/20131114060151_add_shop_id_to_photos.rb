class AddShopIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :shop_id, :integer
  end
end
