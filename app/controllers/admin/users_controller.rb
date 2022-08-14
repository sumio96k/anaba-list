class Admin::UsersController < ApplicationController
  def index
    @deleted_users = User.where(is_deleted: true)
  end

  def show

  end

  def withdraw
    @user = User.find(params[:id])
    @user.update(user_params)
    sign_out current_user
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(:is_deleted, :admin_memo)
  end
end
