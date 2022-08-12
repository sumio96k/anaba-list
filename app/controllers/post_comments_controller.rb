class PostCommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    # binding.pry
    comment.post_id = post.id
    comment.save
    redirect_to post_path(post.id)
  end

  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to post_path(params[:post_id])
  end

  def post_comment_params
    params.require(:post_comment).permit(:comment, :rate)
  end
end
