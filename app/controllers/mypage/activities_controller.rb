class Mypage::ActivitiesController < ApplicationController

# ログインしているユーザーの通知一覧を10件ずつのページネーションで取得する。
  def index
    @activities = current_user.activities.order(created_at: :desc).page(params[:page]).per(10)
  end

end
