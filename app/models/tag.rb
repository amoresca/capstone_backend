class Tag < ApplicationRecord
  has_many :item_tags, dependent: :delete_all
  has_many :items, through: :item_tags

  validates :name, presence: true
end
