class User < ActiveRecord::Base
    has_many :shoppinglist
end