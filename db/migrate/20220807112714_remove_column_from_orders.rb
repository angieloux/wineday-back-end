class RemoveColumnFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :number
  end
end
