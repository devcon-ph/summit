class CreateSponsorCategories < ActiveRecord::Migration
  def change
    create_table :sponsor_categories do |t|
      t.string :name, default: ''

      t.timestamps
    end
  end
end
