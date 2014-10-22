class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name, default: ''
      t.string :photo_url, default: ''
      t.integer :sponsor_category_id
      t.string :website, default: ''

      t.timestamps
    end
  end
end
