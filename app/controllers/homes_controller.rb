class HomesController < ApplicationController
  def top
    #コメントの多い順投稿を取得する
    post_comment_lanks = Post.find(PostComment.group(:post_id).limit(10).order('count(post_id) desc').pluck(:post_id))
    #さらにrateの高い順で並び替える
    @post_rate_lanks = post_comment_lanks.sort{|a,b| b[:rate].to_i<=>a[:rate].to_i}
    #投稿数の多いエリアを多い順に取得して取得してそこから都道府県を取得する
    area_lanks = Area.find(Post.group(:area_id).order('count(area_id) desc').pluck(:area_id))
    @prefecture_lanks = Prefecture.find(area_lanks.pluck(:prefecture_id))
  end

  def about
  end
end
