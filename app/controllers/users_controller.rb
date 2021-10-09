class UsersController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def index
    @users = User.all.page(params[:page]).order(created_at: :desc)
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to welcome_path
    else
      render :new
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to welcome_path, notice: "#{user.name}を削除しました"
  end

  def show
    @user = User.find(params[:id])
  end
  
  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation,
    )
  end

end