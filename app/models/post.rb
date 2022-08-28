class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :area

  has_one_attached :image
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user

  validates :title, presence: true
  validates :body, presence: true, length:{maximum: 200}
  validates :address, presence: true
  validates :category, presence: true
  validates :area, presence: true


  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_post_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type:'image/jpeg')
    end
      image
  end

  def save_tag(sent_tags)
    #タグが存在していれば、タグの名前を配列としてすべて取得
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    #現在取得したタグから送られてきたタグを除いてoldtagとする
    old_tags = current_tags - sent_tags
    #送信されてきたタグから現在存在するタグを除いてnewtagとする
    new_tags = sent_tags - current_tags

    #古いタグを消す
    old_tags.each do |old|
      self.tags.delete Tag.find_by(name: old)
    end

    #新しいタグを保存
    new_tags.each do |new|
      new_post_tag = Tag.find_or_create_by(name: new)
      self.tags << new_post_tag
    end
  end

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  #キーワード検索
  def self.search_for(content)
    posts = Post.where("title LIKE? or body LIKE? or address LIKE?", "%#{content}%","%#{content}%","%#{content}%")
  end

  #セレクトボックスでの絞り込み検索
  def self.select_search_for(category_id, area_id, prefecture_id, area_prefecture_id)
    if category_id >= 1 && area_id == 0 && prefecture_id == 0
      #カテゴリーのみ選択された場合
      posts = Post.where(category_id: category_id)
      result = Category.find(category_id).name
      return posts, result
    elsif category_id == 0 && area_id == 0 && prefecture_id >= 1
      #都道府県のみ選択された場合
      posts = Post.where(area_id: area_prefecture_id)
      result = Prefecture.find(prefecture_id).name
      return posts, result
    elsif  category_id >= 1 && area_id == 0 && prefecture_id >= 1
      #カテゴリーと都道府県のみ選択された場合
      posts = Post.where(category_id: category_id, area_id: area_prefecture_id)
      result = Prefecture.find(prefecture_id).name + "の" + Category.find(category_id).name
      return posts, result
    elsif  category_id == 0 && area_id >= 1 && prefecture_id >= 1
      #カテゴリー以外が選択された場合
      posts = Post.where(area_id: area_id)
      result = Area.find(area_id).name
      return posts, result
    elsif  category_id >= 1 && area_id >= 1 && prefecture_id >= 1
      #すべて選択された場合
      posts = Post.where(category_id: category_id, area_id: area_id)
      result = Area.find(area_id).name + "エリアの" +Category.find(category_id).name
      return posts, result
    elsif  category_id == 0 && area_id == 0 && prefecture_id == 0
      posts = Post.all
      result = "すべて"
      return posts, result
    end
  end

  #コメントの０以外の評価の平均を出しす
  def self.rate_average(post)
    #nilが含まれているものを除く
      rates = post.post_comments - post.post_comments.where(rate: nil)
      rate_average = rates.pluck(:rate).sum.fdiv(rates.length - rates.count(0)).floor(2)
  end

  #並び替え
  def Post.post_orders(order)
    if order == "new"
      new_posts = Post.order(created_at: :DESC)
    elsif order == "high_rate" #コメント数が多く、評価が高い順
      #「コメントの評価がnil」を除いたコメント数が多くかつ投稿の評価が高い順に並び替える
      #sort_byメソッドを使い 「post.post_commentsの多い順(post.post_commentsをcountメソッドでrateがnilを除くコメントが多い投稿順に並び替え)」と
      #「postのrateが高い順」を条件に並び替えを行う

      post_comment_and_rate_lanks = Post.includes(:post_comments).sort_by{|post| [-post.post_comments.count{|comment| !comment.rate.nil?}, -post[:rate].to_i]}
    elsif order == "many_favorites"
      #いいねが多い順で並び替え
      post_like_ranks = Post.includes(:favorited_users).sort {|a,b| b.favorited_users.size <=> a.favorited_users.size}
    end
  end
end
