class Adddetailtoproduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :region, :string
  end
end
