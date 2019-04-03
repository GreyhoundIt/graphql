class AddMinOrderToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :min_order, :integer
  end
end
