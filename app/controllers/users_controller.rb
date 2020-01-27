class UsersController < ApplicationController
    get '/users' do
        # lists out all the users on an index page
        @users = User.all
        erb :'/users/index'
    end 
    
end