class Teas < ActiveRecord::Migration[5.1]
  def change
    def change
      create_table :teas each do |t|
        t.string :name
        t.string :brand
        t.integer :price
    end
  end
end
