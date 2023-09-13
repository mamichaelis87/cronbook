class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :likable, polymorphic: true
      t.belongs_to :liker, class_name: "User"

      t.timestamps
    end
  end
end
