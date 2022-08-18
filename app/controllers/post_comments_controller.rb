class PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.post_id = @post.id
    # 評価を選択していない時は:rateに0を代入して保存
    if params[:rate] == nil
      comment.rate = 0
      comment.save
    else
      comment.save
    end
  end

  def destroy
    PostComment.find(params[:id]).destroy
    @post = Post.find(params[:post_id])
  end

  def post_comment_params
    params.require(:post_comment).permit(:comment, :rate)
  end
end
