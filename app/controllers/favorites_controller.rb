class FavoritesController < ApplicationController
  def index
    #Favoritesテーブルからログインユーザーがいいねを押したレコードのpost_idカラムをpluckで取得
    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorite_lists = Post.find(favorites)
  end

  def create
    #非同期通信
    @post = Post.find(params[:post_id])
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.post_id = @post.id
    favorite.save
  end

  def destroy
    #非同期通信
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.find_by(params[post_id: @post.id])
    favorite.destroy
  end

end
