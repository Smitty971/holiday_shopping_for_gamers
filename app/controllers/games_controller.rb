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
        if !game.title.empty? && !game.type.empty? && !game.rating.empty?
            game.save
            redirect '/games'
        else
            @error = "Data invalid. Please try again"
            erb :'/games/new'
        end
    end


    #read

    get '/games' do
        @games = Game.all
        erb :'games/index'
    end

end