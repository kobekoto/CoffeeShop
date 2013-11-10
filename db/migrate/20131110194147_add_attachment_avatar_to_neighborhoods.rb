class AddAttachmentAvatarToNeighborhoods < ActiveRecord::Migration
  def self.up
    change_table :neighborhoods do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :neighborhoods, :avatar
  end
end
