class Coffees < ActiveRecord::Migration[5.1]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.integer :product_id
    end
  end
end
