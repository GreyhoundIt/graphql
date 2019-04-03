class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :type
      t.string :url
      t.string :slug
      t.boolean :show

      t.timestamps
    end
  end
end
