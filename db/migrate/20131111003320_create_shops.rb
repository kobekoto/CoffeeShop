class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :phone
      t.integer :startAt
      t.integer :endAt
      t.integer :votes
      t.string :twitter

      t.timestamps
    end
  end
end
