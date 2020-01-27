class UsersController < ApplicationController
    get '/users' do
        # lists out all the users on an index page
        @users = User.all
        erb :'/users/index'
    end 

    get '/cart' do
        # finds user via session cookie
        @user = Helpers.current_user(session)
        erb :'/products/cart'
    end
    
end