class Coffees < ActiveRecord::Migration[5.1]
  def change
    create_table :coffees each do |t|
      t.string :name
      t.string :brand
      t.integer :price
  end
end
