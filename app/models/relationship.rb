class Relationship < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  # デフォルトでは"モデル名_id"を探しにいってしまう。Followerモデルを探してしまう。
  # Relationshipモデルの"follower"_idとUserクラスのidを紐づける。
  # 自分がフォローしているユーザーを得ることができるfollowerメソッドを生成するという意味もある。
  belongs_to :followed, class_name: 'User'
  validates :follower_id, presence: true
  validates :followed_id, presence: true
  validates :follower_id, uniqueness: { scope: :followed_id }
end
