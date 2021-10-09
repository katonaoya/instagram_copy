class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    UserMailer.with(user_from: current_user, user_to: @comment.post.user, comment: @comment).comment_post.deliver_later if @comment.save && @comment.post.user.notification_on_comment?


  end
# picture_path(@comment.picture_id)
  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy!
    redirect_to root_path
  end

  def edit
    @comment = current_user.comments.find(params[:id])
  end

  def update
    @comment = current_user.comments.find(params[:id])
    @comment.update(comment_update_params)
  end

  

  private

  def comment_params
    params.require(:comment).permit(:body).merge(picture_id: params[:picture_id])
  end

  def comment_update_params
    params.require(:comment).permit(:body)
  end

end
