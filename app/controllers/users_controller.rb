class UsersController < ApplicationController
    get '/users' do
        # lists out all the users on an index page
        @users = User.all
        erb :'/users/index'
    end 

    get '/users/:id' do
        # finds user
        # redirects them to id
        @user = User.find(params[:id])
        erb :'/users/show'
    end
    
end