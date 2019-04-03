class AddSpecToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :spec, :text
  end
end
