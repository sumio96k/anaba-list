class HomesController < ApplicationController
  def top
    @post_comment_and_rate_lanks = Post.post_orders("high_rate")
    #投稿数の多いエリアを多い順に取得して取得してそこから都道府県を取得する
    area_lanks = Area.find(Post.group(:area_id).order('count(area_id) desc').pluck(:area_id))
    @prefecture_lanks = Prefecture.find(area_lanks.pluck(:prefecture_id))
  end

  def about
  end
end
