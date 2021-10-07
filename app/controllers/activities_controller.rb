class ActivitiesController < ApplicationController

  def read # 通知を既読にするメソッド
  # ログインしているユーザーがクリックした通知を探してきて
    activity = current_user.activities.find(params[:id])
  # 既読でなかったら既読にする。
    activity.read! if activity.unread?
  # activityのredirect_pathメソッドを実行する。
    redirect_to activity.redirect_path
  end
  
end
