class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :borrow_requests, dependent: :delete_all

  validates :name, presence: true
end
