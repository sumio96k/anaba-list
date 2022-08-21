class HomesController < ApplicationController
  def top
    #コメントの多い順投稿を取得する
    post_comment_lanks = Post.find(PostComment.group(:post_id).limit(10).order('count(post_id) desc').pluck(:post_id))
    #さらにrateの高い順で並び替える
    @post_rate_lanks = post_comment_lanks.sort{|a,b| b[:rate].to_i<=>a[:rate].to_i}

    @prefectures = Prefecture.where(name: ['東京都', '大阪府', '福岡県'])
  end

  def about
  end
end
