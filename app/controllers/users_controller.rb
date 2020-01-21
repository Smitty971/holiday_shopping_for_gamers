class UsersController < ApplicationController

    get '/signup' do 
        erb :'users/signup'
    end

    post '/signup' do 
        user = User.new(params) 
        if user.save
            session[:user_id] = user.id
            redirect '/games'
        else
            @error = "Invalid credentials"
            erb :'/users/signup'
        end
    end
end