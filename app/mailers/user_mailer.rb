class UserMailer < ApplicationMailer
# アプリケーション内で起こった出来事ごとにメソッドを作成。
  def like_picture
  # 誰から
    @user_from = params[:user_from]
  # 誰に
    @user_to = params[:user_to]
  # 何を
    @picture = params[:picture]
  # メールの送信先と件名を設定する。
    mail(to: @user_to.email, subject: "#{@user_from.name}があなたの投稿にいいねしました")
  end

  def comment_picture
    @user_from = params[:user_from]
    @user_to = params[:user_to]
    @comment = params[:comment]
    mail(to: @user_to.email, subject: "#{@user_from.name}があなたの投稿にコメントしました")
  end

  def follow
    @user_from = params[:user_from]
    @user_to = params[:user_to]
    mail(to: @user_to.email, subject: "#{@user_from.name}があなたをフォローしました")
  end
end
