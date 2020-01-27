class ProductsController < ApplicationController

    get '/products' do
        @user = Helpers.current_user(session) # need this to call current user.
        @products = Product.all
        erb :'/products/index'
    end

    post '/products' do
        # push @user.products << 
    end
    
    get '/coffee_index' do
        @coffees = Product.where(category: "coffee")
        erb :'/products/coffee_index'    
    end

    post '/coffee_index' do
        # write something that will submit and update cart
    end

    get '/tea_index' do
        @teas = Product.where(category: "tea")
        erb :'/products/tea_index'
    end

    post '/tea_index' do
        # submit and redirec to cart
    end

    get '/cart' do
        # finds user via session cookie
        @user = Helpers.current_user(session)
        # cart should list all products added 
        erb :'/products/cart'
    end

end
