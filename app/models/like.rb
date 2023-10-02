class Like < ApplicationRecord
  belongs_to :likable, polymorphic: true
  belongs_to :liker, class_name: "User"
  validates :liker_id, uniqueness: {scope: :post_id}
end
