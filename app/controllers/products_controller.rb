class ProductsController < ApplicationController

    get '/products' do
        @user = Helpers.current_user(session) # need this to call current user.
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

    get '/cart' do
        
    end
end
