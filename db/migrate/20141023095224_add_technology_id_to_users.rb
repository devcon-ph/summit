class AddTechnologyIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :technology_id, :integer
  end
end
