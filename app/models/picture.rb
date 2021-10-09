class Picture < ApplicationRecord
  mount_uploaders :image, ImageUploader
  has_many_attached :images
  belongs_to :user

  validates :images, presence: true
  validates :title, presence: true, length: { maximum: 1000 }
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user

# モデル名.where('カラム名 like ?','検索したい文字列')
  scope :body_contain, ->(word) { where('pictures.title LIKE ?', "%#{word}%") }
# joinsは複数のテーブルを内部結合するためのメソッド
  scope :comment_body_contain, ->(word) { joins(:comments).where('comments.body LIKE ?', "%#{word}%") }
  scope :name_contain, ->(word) { joins(:user).where('name LIKE ?', "%#{word}%") }
end
