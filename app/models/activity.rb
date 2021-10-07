class Activity < ApplicationRecord
# モデル内でurl_helperを使うためのメソッド。URLを生成したり、URLの情報を取得したりできるようになる。
  include Rails.application.routes.url_helpers
  belongs_to :subject, polymorphic: true # ポリモーフィック
  belongs_to :user

  scope :recent, ->(count) { order(created_at: :desc).limit(count)}

# enumは列挙型の事。action_typeは整数のカラムで設計されているため、enumを使って各数値に対応する名称を当てはめることができる。
  enum action_type: { commented_to_own_picture: 0, liked_to_own_picture: 1, followed_me: 2 }
  enum read: { unread: false, read: true }

  def redirect_path
  # action_typeをto_symでシンボルに変換する。
    case action_type.to_sym
    when :commented_to_own_picture
  # anchor(アンカー)は生成したURLの後ろにanchorで指定したURLをくっつけるというもの。
      picture_path(subject.picture, anchor: "comment-#{subject.id}")
    when :liked_to_own_picture
      picture_path(subject.picture)
    when :followed_me
      user_path(subject.follower)
    end
  end
end
