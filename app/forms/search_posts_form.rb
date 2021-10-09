class SearchPostsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  # データ型の指定
  attribute :body, :string
  attribute :comment_body, :string
  attribute :name, :string

  def search
  # scopeとは検索条件を設定するコード

  # 同じ投稿が複数ヒットしたら一つにまとめて表示する。（検索結果を重複させない）
    scope = Picture.distinct
  # もしbodyが渡されていた時、半角スペースによって区切られているワードがあったら、それぞれで検索をする。contain => 含む
    scope = splited_bodies.map { |splited_body| scope.body_contain(splited_body) }.inject { |result, scp| result.or(scp) } if body.present?
  # コメントの内容も含めて検索された場合には、コメントの内容も検索条件に含めて検索する。
    scope = scope.comment_body_contain(comment_body) if comment_body.present?
  # ユーザーの名前も含めて検索された場合には、ユーザーの名前も検索条件に含めて検索する。
    scope = scope.name_contain(name) if name.present?
    scope
  end

  private

# bodyに半角スペースが含まれているかを正規表現で規定する。
  def splited_bodies
    body.strip.split(/[[:blank:]]+/)
  end
end