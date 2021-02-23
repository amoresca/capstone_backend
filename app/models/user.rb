class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  
  has_many :items
  has_many :borrow_requests, class_name: "BorrowRequest", foreign_key: "requestor_id"

  def friendships
    @friendships = Friendship.where("requestor_id = ? AND status = ? OR requestee_id = ? AND status = ?", id, "accepted", id, "accepted")
  end

  def pending_friendships
    @pending_friendships = Friendship.where("requestee_id = ? AND status = ?", id, "pending")
  end

  def borrowed_items
    borrow_requests.where("status = ?", "accepted")
  end
end
