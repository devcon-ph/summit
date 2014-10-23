class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name, default: ''
      t.string :slug, default: ''

      t.timestamps
    end
  end
end
