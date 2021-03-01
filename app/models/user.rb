class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  
  has_many :items, dependent: :destroy
  has_many :borrow_requests, class_name: "BorrowRequest", foreign_key: "requestor_id", dependent: :delete_all

  def friendships
    @friendships = Friendship.where("requestor_id = ? AND status = ? OR requestee_id = ? AND status = ?", id, "accepted", id, "accepted")
  end

  def friends
    @friends = friendships.map do |friendship|
      if friendship.requestor_id == id
        friendship.requestee
      else
        friendship.requestor
      end
    end
    @friends
  end

  def pending_friendships
    @pending_friendships = Friendship.where("requestee_id = ? AND status = ?", id, "pending")
  end

  def pending_friends
    @pending_friends = pending_friendships.map do |friendship|
      friendship.requestor
    end
    @pending_friends
  end

  def borrowed_items
    borrow_requests.where("status = ?", "accepted")
  end
end
