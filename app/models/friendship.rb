class Friendship < ApplicationRecord
  belongs_to :requestor, class_name: "User"
  belongs_to :requestee, class_name: "User"
  
  validates :status, presence: true
end
