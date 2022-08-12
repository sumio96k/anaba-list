class FavoritesController < ApplicationController
  def index
    #Favoritesテーブルからログインユーザーがいいねを押したレコードのpost_idカラムをpluckで取得
    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorite_lists = Post.find(favorites)
  end

  def create
    post = Post.find(params[:post_id])
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.post_id = post.id
    favorite.save
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find_by(params[post_id: post.id])
    favorite.destroy
    redirect_to post_path(post.id)
  end

end
