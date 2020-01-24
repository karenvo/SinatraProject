class Products < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :brand
      t.integer :price
    end
  end
end
