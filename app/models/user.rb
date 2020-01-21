class User < ActiveRecord::Base
    has_many :coffees
    has_many :teas

end
