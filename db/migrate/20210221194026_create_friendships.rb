class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :requestor_id
      t.integer :requestee_id
      t.string :status

      t.timestamps
    end
  end
end
