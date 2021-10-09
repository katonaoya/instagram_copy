class PicturesController < ApplicationController
  def index 
    @pictures = Picture.all.includes(:user).page(params[:page]).order(created_at: :desc)
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params.merge(user_id: current_user.id))
    if @picture.save
      redirect_to root_path, success: '投稿しました'
    else
      flash.now[:danger] = '投稿に失敗しました'
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
    @comments = @picture.comments.includes(:user).order(created_at: :desc)
    @comment = Comment.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = current_user.pictures.find(params[:id])
    if @picture.update(picture_params)
      redirect_to picture_path, success: '投稿を更新しました'
    else
      flash.now[:danger] = '投稿の更新に失敗しました'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to root_path, notice: "#{@picture.title}を削除しました"
  end

  private

  def picture_params
    params.require(:picture).permit(
      :title,
      images: []
    )
  end
end
