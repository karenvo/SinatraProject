class ApplicationController < Sinatra::Base
    configure do
        set :session_secret, "secret" 
        set :public_folder, 'public'
        set :views, 'app/views'
      end

      enable :sessions 
      enable :method_override

    get '/' do
      if Helpers.logged_in?(session)
        @user = Helpers.current_user(session)
        @products = Product.all
        erb :'/products/index'
      else 
        erb :'/users/login'
      end
    end

    get '/signup' do
        if Helpers.logged_in?(session)
          @user = Helpers.current_user(session)
          redirect to '/products'
        else
          erb :index
        end
        erb :'/users/signup'
      end
    
      post '/signup' do
        if params["username"] == "" || params["password"] == "" || params["email"] == ""
          redirect '/signup'  # redirects to signup page
        else
          @user = User.create(username: params["username"], password: params["password"], email: params["email"])
          @user.save
          session[:user_id] = @user.id
          redirect "/products"
        end
      end

      get '/login' do
        if Helpers.logged_in?(session)
          Helpers.current_user(session)
          redirect '/products'
        else
          erb :'/users/login'
        end
      end
    
      post '/login' do
        @user = User.find_by(:username => params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect to "/products"
        else
          redirect to "/login"
        end
        redirect to "/login"
      end
    
      get '/logout' do
        if Helpers.logged_in?(session)
          session.clear
          redirect to "/login"
        else
          redirect '/'
        end
      end

end