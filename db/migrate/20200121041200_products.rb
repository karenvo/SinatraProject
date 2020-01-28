class Products < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :brand
      t.decimal :price, precision: 10, scale: 3
    end
  end
end
