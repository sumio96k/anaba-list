class HomesController < ApplicationController
  def top
    #コメントの多い順投稿を取得する
    post_comment_lanks = Post.find(PostComment.group(:post_id).limit(10).order('count(post_id) desc').pluck(:post_id))
    #さらにrateの高い順で並び替える
    @post_rate_lanks = post_comment_lanks.sort{|a,b| b[:rate].to_i<=>a[:rate].to_i}
    #投稿数の多いエリアを取得してそこから都道府県を取得する
    @prefectures = Prefecture.find(Area.find(post_comment_lanks.pluck(:area_id)).pluck(:prefecture_id))
  end

  def about
  end
end
