class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.string :status
      t.belongs_to :requester, class_name: "User"
      t.belongs_to :accepter, class_name: "User"

      t.timestamps
    end
  end
end
