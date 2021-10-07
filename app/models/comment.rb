class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :picture
# 別のモデルとの１対１の関連付けを行い、オプションをつけることもできる。as:でポリモーフィック関連を定義することができる。
  has_one :activity, as: :subject, dependent: :destroy

  validates :body, presence: true, length: { maximum: 1000 }

# Commentがcreateされる時には必ずcreate_activitiesが実行される。
  after_create_commit :create_activities

  private

# ポリモーフィックをしているので、Activityクラスのインスタンスを使うことができる。
  def create_activities
    Activity.create(subject: self, user: picture.user, action_type: :commented_to_own_picture)
  end
end
