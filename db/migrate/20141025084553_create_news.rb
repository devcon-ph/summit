class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :photo_url
      t.integer :news_category_id
      t.text :html_content

      t.timestamps
    end
  end
end
