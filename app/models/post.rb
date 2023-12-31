class Post < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :comments
  has_many :likes, as: :likable

  def liked?(user)
    self.likes.find{|like| like.liker_id == user.id}
  end

  def recent_comments
    if self.comments.length > 3 
      return self.comments.last(3)
    else
      return self.comments
    end
  end
end
