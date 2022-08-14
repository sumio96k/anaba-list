class Admin::UsersController < ApplicationController
  def index
    @deleted_users = User.where(is_deleted: true)
  end

  def withdraw
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    sign_out current_user
    redirect_to admin_users_path
  end
end
