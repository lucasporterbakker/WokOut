class AddIsChefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ischef, :boolean
  end
end
