class PostsController < ApplicationController
  before_action :correct_user_without_admin, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
    @prefectures = Prefecture.all
  end

  def show
    @post = Post.find(params[:id])
    #コメントしたユーザーが退会した場合もあるためrateを再度計算させる
    rate_average = Post.rate_average(@post)
    if rate_average.nan? #コメントが削除された際平均を計算してNaNになったらrateにnilを入れる
      @post.update(rate: nil)
    else
      @post.update(rate: rate_average)
    end
    @prefecture = Prefecture.find_by(id: @post.area.prefecture_id)
    @post_tag = @post.tags
    @post_comment = PostComment.new
    @post_comments = @post.post_comments
    @favorite = Favorite.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    tag_list = params[:post][:name].split(nil)
    if @post.save
      @post.save_tag(tag_list)
      flash[:succes] = "投稿しました！"
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:succes] = "編集しました！"
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:danger] = "投稿を削除しました！"
    redirect_to user_path(@post.user.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :address, :category_id, :area_id, :image)
  end

  def correct_user_without_admin
    if user_signed_in?
      @post = Post.find(params[:id])
      redirect_to posts_path unless @post.user == current_user || current_user.admin == true
    else
      redirect_to posts_path
    end
  end


end
