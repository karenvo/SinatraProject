class ProductsController < ApplicationController

    # lists all of the products user has saved

    get '/products' do
        @products = Product.all
        erb :'/products/index'
    end
    
    get '/coffee_index' do
        @coffees = Coffee.all
        erb :'/products/coffee_index'    
    end

    get '/tea_index' do
        @teas = Tea.all
        erb :'/products/tea_index'
    end

end
