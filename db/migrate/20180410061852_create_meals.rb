class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :price
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
