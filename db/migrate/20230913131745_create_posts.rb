class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.belongs_to :author, class_name: "User"
      t.text :body

      t.timestamps
    end
  end
end
