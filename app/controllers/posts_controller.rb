class PostsController < ApplicationController

  before_action :correct_user_without_admin, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
    @prefectures = Prefecture.all
  end

  def show
    @post = Post.find(params[:id])
    @post_comments = @post.post_comments
    @prefecture = Prefecture.find_by(id: @post.area.prefecture_id)
    @post_tag = @post.tags
    @post_comment = PostComment.new
    @post_comments = @post.post_comments
  end

  def edit
    @post = Post.find(params[:id])
    @post_comments = @post.post_comments
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
      flash[:notice] = "You have created book successfully."
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(@post.user.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :address, :category_id, :area_id, :image)
  end

  def correct_user_without_admin
    @post = Post.find(params[:id])
    if user_signed_in?
      redirect_to posts_path unless @post.user == current_user || current_user.admin == true
    else
      redirect_to posts_path
    end
  end
end
