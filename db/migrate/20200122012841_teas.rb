class Teas < ActiveRecord::Migration[5.1]
  def change
      create_table :teas do |t|
        t.string :name
        t.string :brand
        t.integer :price
        t.integer :product_id
    end
  end
end
