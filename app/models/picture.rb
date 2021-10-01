class Picture < ApplicationRecord
  mount_uploaders :image, ImageUploader
  has_many_attached :images
  belongs_to :user

  validates :images, presence: true
  validates :title, presence: true, length: { maximum: 1000 }
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
end
