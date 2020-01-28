class ProductsController < ApplicationController

    get '/products' do
        @user = Helpers.current_user(session) # need this to call current user.
        @products = Product.all
        erb :'/products/index'
    end

    post '/products' do
        @user = Helpers.current_user(session)
        params[:product_ids].each do |thingiemabob|
            @user.products << Product.find(thingiemabob)
        end
        @user.save
        redirect to "cart"
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
        # finds user via session cookie
        @user = Helpers.current_user(session)
        # cart should list all products added
        @items = @user.products.reduce([]) do |arr, p|
            existing = arr.find do |ex|
                ex[:product].id == p.id
            end
            if existing == nil
                existing = {
                    :product => p,
                    :count => 1
                }
                arr << existing
            else 
                existing[:count] += 1
            end
            arr
        end 
        erb :'/products/cart'
    end

    post '/cart' do
        @user = Helpers.current_user(session)
        @user.products = []
        params[:product_counts].each do |product_id, count|
            p = Product.find(product_id)
            (1..count.to_i).each do |x|
                @user.products << p
            end
        end
        @user.save
        redirect to "cart"
    end

end
