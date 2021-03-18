class AddReadToFriendships < ActiveRecord::Migration[6.0]
  def change
    add_column :friendships, :read, :boolean, default: false
  end
end
