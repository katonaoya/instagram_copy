class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :picture

  validates :body, presence: true, length: { maximum: 1000 }
end
