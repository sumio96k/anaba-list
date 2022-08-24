class UsersController < ApplicationController

  before_action :correct_user_without_admin, only: [:edit, :update]
  before_action :ensure_guest_user, only: [:edit]

  def index
    users = User.all
    @users = User.users_without_admin_deleted(users)
  end

  def show
    @user = User.find(params[:id])
    #管理者以外は管理者のマイページと退会ユーザーのマイページを閲覧できない
    if user_signed_in?
      if current_user.admin == false && @user.admin == true || @user.is_deleted == true
        redirect_to root_path
      end
    else
      if @user.admin == true || @user.is_deleted == true
        redirect_to root_path
      end
    end
    @posts = @user.posts
    @prefectures = Prefecture.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:succes] = "プロフィールを編集しました！"
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:danger] = "退会しました！"
    redirect_to root_path
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :admin)
  end

  def correct_user_without_admin
    @user = User.find(params[:id])
    if user_signed_in?
      redirect_to user_path(current_user) unless @user == current_user || current_user.admin == true
    else
      redirect_to users_path
    end
  end

  def ensure_guest_user
    @user = User.find(params[:id])
    if @user.name == "guestuser"
      redirect_to user_path(current_user) , notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end




end
