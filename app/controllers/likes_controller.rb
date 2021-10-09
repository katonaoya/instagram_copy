class LikesController < ApplicationController
  def create
    @picture = Picture.find(params[:picture_id])
    UserMailer.with(user_from: current_user, user_to: @post.user, post: @post).like_post.deliver_later if current_user.like(@post) && @post.user.notification_on_like?
  end

  def destroy
    @picture = Like.find(params[:id]).picture
    current_user.unlike(@picture)
  end
end
