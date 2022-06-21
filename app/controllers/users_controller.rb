class UsersController < ApplicationController
  def index
    @user = User.find(params[:id])
  end

  def new
    
  end

  def create

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
        redirect_to edit_user_path
      else
        render "edit"
      end
  end

  def destroy
  end

  def search

  end

  private
  
  def user_params
    params.require(:user).permit(:image, :name, :introduction)
  end

end
