class ProductsController < ApplicationController

    # lists all of the products user has saved

    get '/products' do
        @products = Product.all
        erb :'/products/index'
    end
    
    get '/coffee_index' do
        @coffees = Product.where(category: "coffee")
        erb :'/products/coffee_index'    
    end

    get '/tea_index' do
        @teas = Product.where(category: "tea")
        erb :'/products/tea_index'
    end

end
