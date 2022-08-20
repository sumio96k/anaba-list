class HomesController < ApplicationController
  def top
    #コメントの多い順＋評価の高い順
    # post_comments_lank = Post.find(PostComment.group(:post_id).order('count(post_id) desc').pluck(:post_commnt)
    #投稿数の多い順で並び替えしたい
    @prefectures = Prefecture.where(name: ['東京都', '大阪府', '福岡県'])
  end

  def about
  end
end
