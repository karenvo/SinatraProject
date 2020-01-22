class AddProductIdToTeas < ActiveRecord::Migration[5.1]
  def change
    add_column :teas, :product_id, :integer
  end
end
