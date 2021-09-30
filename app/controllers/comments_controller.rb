class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @comment.save
    redirect_to pictures_path(:id)
  end

  def edit
    @comment = current_user.comments.find(params[:id])
  end

  def update
    @comment = current_user.comments.find(params[:id])
    @comment.update(comment_update_params)
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy!
    redirect_to pictures_path(:id)
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(picture_id: params[:picture_id])
  end

  def comment_update_params
    params.require(:comment).permit(:body)
  end

end
