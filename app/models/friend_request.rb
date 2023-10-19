class FriendRequest < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  validates :user, presence: true
  validates :friend, presence: true, uniqueness: { scope: :user }
  validate :not_self
  
  def accept
    user.friends << friend
    destroy
  end

  private

  def not_self
    errors.add(:friend, "Cannot be equal to user") if user == friend
  end
end
