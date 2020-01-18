class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :genre
      t.string :title
      t.string :rating
      t.string :list_name
    end
  end
end
