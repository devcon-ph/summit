class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.datetime :start_at
      t.string :title
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end
end
