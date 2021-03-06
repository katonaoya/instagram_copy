class SessionsController < ApplicationController

  skip_before_action :require_login, except: [:destroy]

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to pictures_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to welcome_path, success: 'ログアウトしました'
  end

end
