class UsersController < ApplicationController

    get '/signup' do 
        erb :'users/signup'
    end

    post '/signup' do 
        user = User.new(params) 
        if user.username.empty? || user.password.empty?
            @error = "Username and password can't be blank"
            erb :'users/signup'  
        elsif User.find_by(username: user.username)
            @error = "Account with that username already exists"
            erb :'users/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/games'
        end    
    end
end