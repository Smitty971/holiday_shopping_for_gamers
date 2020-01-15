class CreateShoppinglistgames < ActiveRecord::Migration
  def change
    create_table :shoppinglistgames do |t|
     t.integer :shoppinglist_id
     t.integer :games_id
    end
  end
end
