class AddDetailsToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :description, :text, default: ''
    add_column :speakers, :twitter_handle, :string, default: ''
    add_column :speakers, :website, :string, default: ''
    add_column :speakers, :photo_url, :string, default: ''
  end
end
