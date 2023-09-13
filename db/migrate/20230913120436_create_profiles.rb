class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :hometown
      t.string :occupation
      t.string :quote
      t.text :other_info
      t.belongs_to :user

      t.timestamps
    end
  end
end
