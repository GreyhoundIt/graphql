class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.text :marketing_text

      t.timestamps
    end
  end
end
