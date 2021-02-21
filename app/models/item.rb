class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :borrow_requests
end
