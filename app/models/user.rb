class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  accepts_nested_attributes_for :profile, allow_destroy: true
  has_many :posts, foreign_key: "author_id"
  has_many :comments, foreign_key: "author_id"
  has_many :likes, foreign_key: "liker_id"
  has_many :friendships
  has_many :requesters, through: :friendships, class_name: "User", foreign_key: "requester_id"
  has_many :accepters, through: :friendships, class_name: "User", foreign_key: "accepter_id"
end
