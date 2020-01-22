class AddUserIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :user_id, :string
  end
end
