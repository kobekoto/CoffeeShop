class UsersShops < ActiveRecord::Migration
  def change
  	create_table :users_shops do |t|
  		t.references :user
  		t.references :shop
  	end
  end
end
