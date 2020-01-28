class Product < ActiveRecord::Base
      has_many :user_products
      has_many :users, through: :user_products
    #  belongs_to :user
end