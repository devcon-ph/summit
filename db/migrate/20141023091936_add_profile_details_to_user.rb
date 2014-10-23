class AddProfileDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, default: ''
    add_column :users, :last_name, :string, default: ''
    add_column :users, :position, :string, default: ''
    add_column :users, :company, :string, default: ''
    add_column :users, :location, :string, default: ''
    add_column :users, :description, :text, default: ''
    add_column :users, :website, :string, default: ''
    add_column :users, :facebook_url, :string, default: ''
    add_column :users, :twitter_handle, :string, default: ''
  end
end
