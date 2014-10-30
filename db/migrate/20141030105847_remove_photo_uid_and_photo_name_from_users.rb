class RemovePhotoUidAndPhotoNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :photo_uid
    remove_column :users, :photo_name
  end
end
