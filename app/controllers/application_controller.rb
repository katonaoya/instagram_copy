class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :set_search_pictures_form
  add_flash_types :success, :info, :warning, :danger

  protected

  def not_authenticated
    redirect_to welcome_path, warning: 'ログインが必要です'
  end

  private
  # ヘッダー部分（=共通部分）に検索フォームを置くのでApplicationControllerに実装する
  def set_search_pictures_form
    @search_form = SearchPostsForm.new(search_picture_params)
  end

  def search_picture_params
    params.fetch(:q, {}).permit(:body, :comment_body, :name)
  end

  # before_actionで常にset_search_pictures_formメソッドでSearchPostsFormクラスのインスタンスを作成し、検索するワードの入力を受け入れる準備をしておく。
  # search_picture_params内のhash.fetch(key, default)はkeyが存在しないときにdefaultを返す。第二引数がなく、指定されたパラメータがないときにActionController::ParameterMissingエラーが起きるが、default値を設定しておけばdefaultを返すためエラーが起きないようにする。
end
