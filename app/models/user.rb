class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, length: { in: 1..20 }, uniqueness: { case_sensitive: false }

  has_one :profile
  accepts_nested_attributes_for :profile, allow_destroy: true
  has_many :posts, foreign_key: "author_id"
  has_many :comments, foreign_key: "author_id"
  has_many :likes, foreign_key: "liker_id"
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships, source: :friend
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_one_attached :profile_picture

  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end
end
