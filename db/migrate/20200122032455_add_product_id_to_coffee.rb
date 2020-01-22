class AddProductIdToCoffee < ActiveRecord::Migration[5.1]
  def change
    add_column :coffees, :product_id, :integer
  end
end
