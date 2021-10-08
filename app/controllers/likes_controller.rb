class LikesController < ApplicationController
  def create
    @picture = Picture.find(params[:picture_id])
    UserMailer.with(user_from: current_user, user_to: @picture.user, picture: @picture).like_picture.deliver_later if current_user.like(@picture)
  end

  def destroy
    @picture = Like.find(params[:id]).picture
    current_user.unlike(@picture)
  end
end
