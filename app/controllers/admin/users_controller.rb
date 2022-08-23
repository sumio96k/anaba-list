class Admin::UsersController < ApplicationController
  before_action :admin_user

  def index
    @deleted_users = User.where(is_deleted: true)
  end

  def withdraw
    @user = User.find(params[:id])
    #管理者が退会させたらis_deletedをtrue 復活させるならfalseでupdate
    if params[:user][:is_deleted] == true
      @user.update(user_params)
    else
      @user.update(is_deleted: false, admin_memo: nil)
    end
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:is_deleted, :admin_memo)
  end

  def admin_user
    if user_signed_in?
      redirect_to user_path(current_user) unless current_user.admin == true
    else
      redirect_to root_path
    end
  end
end
