class Shoppinglist < ApplicationController

    #read
    get '/shoppinglist' do 
        erb :'shoppinglist/index'
    end

end