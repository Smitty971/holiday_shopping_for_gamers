class GamesController < ApplicationController

    #create
    
    #
    get '/games/new' do 
        erb :'/games/new'
    end
    
    #something here throws an error

    post '/games' do 
        game = Game.new(params)
        game.save

        if !game.title.empty? && !game.genre.empty?
            game.save
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

    #update 

    get '/games/:id/edit' do 
        @games= Game.find(params["id"])
        erb :'/games/edit'
    end
end