class Shoppinglistgame < ActiveRecord::Base
    has_many :games, through: :Shoppinglistgames
end