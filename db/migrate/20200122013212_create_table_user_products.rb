class CreateTableUserProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_products do |t|
      t.integer :product_id
      t.integer :user_id
    end
  end
end
