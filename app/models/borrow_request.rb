class BorrowRequest < ApplicationRecord
  belongs_to :requestor, class_name: "User"
  belongs_to :item

  validates :status, presence: true
end
