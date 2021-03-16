class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :borrow_requests, dependent: :delete_all
  has_many :item_tags, dependent: :delete_all
  has_many :tags, through: :item_tags

  validates :name, presence: true
end
