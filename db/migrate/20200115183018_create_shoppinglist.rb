class CreateShoppinglist < ActiveRecord::Migration
  def change
    create_table :shoppinglist do |t|
      t.string :name
      t.string :title
      t.string :image
      t.integer :user_id
    end
  end
end
