class CreateFriendRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests do |t|
      t.belongs_to :user
      t.belongs_to :friend, class_name: "User" 

      t.timestamps
    end

    remove_column :friendships, :status
  end
end
