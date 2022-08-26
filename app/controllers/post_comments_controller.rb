class PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.post_id = @post.id
    @post_comment = PostComment.new
    if params[:post_comment][:rate].blank?
    # 評価を選択していない時は:rateに0を代入して保存(エラーになるため)
      comment.rate = 0
      comment.save
    else
    # 評価があれば平均値を出してPostのrateカラムに保存する
      comment.save
      rate_average = Post.rate_average(@post)
      @post.update(rate: rate_average)
    end
  end

  def destroy
    PostComment.find(params[:id]).destroy
    @post = Post.find(params[:post_id])
    post_comments = @post.post_comments
    rate_average = Post.rate_average(@post)
    if rate_average.nan?
      #コメントが削除された際平均を計算してNaNになったらrateにnilを入れる
      @post.update(rate: nil)
    else
      @post.update(rate: rate_average)
    end
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment, :rate)
  end
end
