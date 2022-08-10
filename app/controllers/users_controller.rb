class UsersController < ApplicationController
  before_action :correct_user_without_admin, only: [:edit, :update]
  before_action :ensure_guest_user, only: [:edit]

  def index
    @users = all_users_without_admin_deleted
  end

  def show
    @user = User.find(params[:id])
    if @user.admin == true || @user.is_deleted == true
      redirect_to root_path
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
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdraw
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    sign_out current_user
    redirect_to root_path
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

  def all_users_without_admin_deleted
    User.all - User.where(admin: true) - User.where(is_deleted: true)
  end


end
