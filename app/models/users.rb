class User < ActiveRecord::Base
    has_many :shoppinglists
end