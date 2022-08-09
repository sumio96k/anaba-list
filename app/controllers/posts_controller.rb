class PostsController < ApplicationController
  def index
    @posts = Post.all
    @prefectures = Prefecture.all
  end

  def show
    @post = Post.find(params[:id])
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
    if @post.save
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :address, :category_id, :area_id, :image)
  end
end
