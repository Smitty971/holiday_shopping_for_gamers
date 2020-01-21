class UsersController < ApplicationController

    get '/signup' do 
        erb :'users/signup.erb'
    end

    post '/signup' do 
        user = User.new(params) 
        if user.username.empty? || user.password.empty?
            @error = "Username and password can't be blank"
            erb :'users/signup'  
        else
            user.save
            redirect '/games'
        end    
    end
end