class GamesController < ApplicationController

    before do 
       require_login
    end

    get '/games/new' do 

        erb :'/games/new'
    end

    post '/games' do 
        game = Game.new(params)
        game.user = current_user
        if game.save
            redirect '/games'
        else
            @error = "Data invalid. Please try again"
            erb :'/games/new'
        end
    end


    #read

    get '/games' do
            @games = Game.all.reverse
            erb :'games/index'
    end

    #show

    get '/games/:id' do
            @game = Game.find_by(id: params[:id])
        if @game
            erb :'games/show'
        else
            redirect '/games'
        end
    end

    #update 

    get '/games/:id/edit' do 
        @game= Game.find(params["id"])
        authorize
            erb :'/games/edit'
    end

    
    
    patch '/games/:id' do
        @game = Game.find(params["id"])
        authorize
            @game.update(params["games"])
            redirect "/games/#{params[:id]}"
    end

    #destroy

    delete '/games/:id' do 
        @game = Game.find(params[:id])
        authorize 
            @game.destroy
            redirect "/games"
    end
end