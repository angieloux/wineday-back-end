class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.integer :points
      t.string :description
      t.string :variety
      t.string :province
      t.string :country
      t.string :winery

      t.timestamps
    end
  end
end
