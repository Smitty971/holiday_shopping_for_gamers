class GamesController < ApplicationController

    before do 
       require_login
    end

    get '/games/new' do 

        erb :'/games/new'
    end

    post '/games' do 
        game = Game.new(params)
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
        @games= Game.find(params["id"])
        if authorize(@game)
            erb :'/games/edit'
        else
            redirect :'/games'
        end
    end

    
    
    patch '/recipes/:id' do
        @game = Game.find(params["id"])
        if authorize(@game)
            game.update(params["game"])
            redirect "/games/#{params[:id]}"
        else
            redirect '/games/:id'
        end
    end

    #destroy

    delete '/gears/:id' do 
        game = Game.find(params[:id])
        game.destroy
        redirect '/gears'
    end
end