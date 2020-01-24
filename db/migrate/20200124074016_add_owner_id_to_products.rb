class AddOwnerIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :owner_id, :integer
  end
end
