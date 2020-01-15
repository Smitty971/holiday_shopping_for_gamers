class Shoppinglist < ActiveRecord::Base
    belongs_to :user
    belongs_to :shoppinglistgames
end