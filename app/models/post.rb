class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :comments
  has_many :likes, as: :likable
  def liked?(user)
    self.likes.find{|like| like.liker_id == user.id}
  end
end
