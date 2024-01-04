class AddGrayshirt < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :gray_shirt, :string
  end
end
