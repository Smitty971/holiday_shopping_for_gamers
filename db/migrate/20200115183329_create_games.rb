class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :genre
      t.string :title
      t.string :rating
    end
  end
end
