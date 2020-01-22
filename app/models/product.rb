class Product < ActiveRecord::Base
    has_many :user_products
    has_many :users, through: :user_products
    # has_many :coffee_products
    # has_many :coffees, through: :coffee_products
end