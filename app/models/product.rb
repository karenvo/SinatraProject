class Product < ActiveRecord::Base
    belongs_to :user
    has_many :coffees
    has_many :teas
    
end