class RemoveFriendsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :friends, :string
  end
end
