class User < ApplicationRecord
  authenticates_with_sorcery!

  mount_uploader :avatar, AvatarUploader

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  has_many :pictures, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  # Default: class_name: "Like"
  # Default: foreign_key: "user_id" LikeClassのuser_idとUserClassのidを紐づける
  # => "#{Model Name}s"
  has_many :like_pictures, through: :likes, source: :picture
  has_many :active_relationships, class_name: 'Relationship',
                                  foreign_key: 'follower_id',
                                  dependent: :destroy
  # has_manyはメソッドを作るメソッドなので、active_relationshipでフォローしている人を探し出すメソッドになる
  # active_relationships => 自分からフォローするから能動的な関係性という意味でこの名前
  # class_nameを設定する理由は、デフォルトの挙動ではactive_relationshipモデルを探してしまうため
  # foreign_keyはRelationshipクラスのfollower_idとUserクラスのidを紐づけるという設定
  has_many :passive_relationships, class_name: 'Relationship',
                                   foreign_key: 'followed_id',
                                   dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
# @user.active_relationships.map(&:followerd) => ユーザーがフォローしている人の一覧データ
# map(&:followerd)はハッシュからfollowerdという値を取り出すということを繰り返すというメソッド
# active_relationshipsのuser_idと@user.idが同じ(フォローしているユーザー)人のfollwerd（@userにフォローされている人）を全てとってくるメソッド（following）を作る
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :activities, dependent: :destroy

  scope :recent, ->(count) { order(created_at: :desc).limit(count) }

  def own?(object)
    id == object.user_id
  end

  def like(picture)
    like_pictures << picture
  end

  def unlike(picture)
    like_pictures.destroy(picture)
  end

  def like?(picture)
    like_pictures.include?(picture)
  end

  def follow(other_user)
    following << other_user
    # SQLとのやりとりをRailsの言語で書くので通常の挙動とは異なるが、配列に対して追加するような書き方をすることで、followingメソッドを発動させてfollowするというデータを作ることができる。
  end

  def unfollow(other_user)
    following.destroy(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

  def feed # feedはタイムラインのようなイメージ
    Picture.where("user_id IN (?) OR user_id = ?", following_ids, id)
  # Pictureの中から（）の条件のデータを問い合わせる。
  # "?"の部分には後ろにある引数が左から順に入っていく。DBのセキュリティ上の問題
  # following_idsはSQLのRuby言語で用意されているレールで、followingのidの集合をとってきてくれるメソッド
  # Pictureの中のuser_idが自分のフォローしている人のidか自分のidであればDBからとってくるという意味
  end
end
