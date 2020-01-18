class GamesController < ApplicationController

    #create
    
    #
    get '/games/new' do 
        erb :'/games/new'
    end
    

    # post '/games' do 
    #     @game = Game.new(title: params[:title], rating: params[:rating], genre: params[:genre])

    #     if !@game.title.empty? && !@game.genre.empty? && @game.save
    #         redirect '/games'
    #     else
    #         @error = "Data invalid. Please try again"
    #         erb :'/games/new'
    #     end
    # end

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
        erb :'/games/edit'
    end

    patch '/recipes/:id' do
        game = Game.find(params["id"])
        if game.save
            redirect '/games'
        else
            @error = "Data invalid. Please try again"
            erb :'/games/new'
        end
        game.update(title: params["title"], genre: params["genre"], rating: params["rating"], list_name: params["list_name"])

    end

    #destroy

    delete '/gears/:id' do 
        game = Game.find(params[:id])
        game.destroy
        redirect '/gears'
    end
end