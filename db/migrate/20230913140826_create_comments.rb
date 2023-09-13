class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.belongs_to :author, class_name: "User"
      t.belongs_to :post
      t.text :body

      t.timestamps
    end
  end
end
