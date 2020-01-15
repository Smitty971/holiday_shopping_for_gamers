class Shoppinglistgames < Activerecord::Base
    has_many :games through :Shoppinglistgames
end