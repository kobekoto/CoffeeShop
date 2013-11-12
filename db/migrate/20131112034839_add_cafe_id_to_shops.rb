class AddCafeIdToShops < ActiveRecord::Migration
  def change
    add_column :shops, :cafe_id, :string
  end
end
