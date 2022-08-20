class PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.post_id = @post.id
    if params[:post_comment][:rate].blank?
    # 評価を選択していない時は:rateに0を代入して保存
      comment.rate = 0
      comment.save
      @rate_average = Post.rate_average(@post)
    else
      comment.save
      @rate_average = Post.rate_average(@post)
    end
  end

  def destroy
    PostComment.find(params[:id]).destroy
    @post = Post.find(params[:post_id])
    post_comments = @post.post_comments
    rates = post_comments.pluck(:rate)
    @rate_average = rates.sum.fdiv(rates.length - rates.count(0)).floor(2)
  end

  def post_comment_params
    params.require(:post_comment).permit(:comment, :rate)
  end
end
