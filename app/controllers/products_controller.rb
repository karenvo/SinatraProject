class ProductsController < ApplicationController

    # lists all of the products user has saved

    get '/products' do
        erb :'/products/index'
    end
    
end
