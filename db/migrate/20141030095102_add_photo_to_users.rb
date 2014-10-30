class AddPhotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :photo_uid, :string
    add_column :users, :photo_name, :string
  end
end
