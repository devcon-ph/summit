class CreateTechnologiesUsers < ActiveRecord::Migration
  def change
    create_table :technologies_users do |t|
      t.integer :technology_id
      t.integer :user_id
    end
  end
end
