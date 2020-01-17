class GamesController < ApplicationController




    #read

    get '/games' do
        @games = Game.all
        erb :'games/index'
    end

end