class User < ApplicationRecord
  has_many :items
  has_many :borrow_requests, class_name: "BorrowRequest", foreign_key: "requestor_id"

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
