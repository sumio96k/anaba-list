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

  def self.search_for(content)
    posts = Post.where("title LIKE? or body LIKE? or address LIKE?", "%#{content}%","%#{content}%","%#{content}%")
  end
  # binding.pry
  def self.select_search_for(category_id, area_id, key)
    if key == 0
      #カテゴリーのみ選択された場合
      posts = Post.where(category_id: category_id)
    elsif key == 1
      #都道府県のみ選択された場合
      posts = Post.where(area_id: area_id)
    elsif key == 2
      #カテゴリー以外が選択された場合
      posts = Post.where(area_id: area_id)
    elsif key == 3
      #カテゴリーとエリアが選択されたか、すべて選択された場合
      posts = Post.where(category_id: category_id, area_id: area_id)
    end
  end

  #コメントの０以外の評価の平均を出す
  def self.rate_average(post)
      rates = post.post_comments.pluck(:rate)
      rate_average = rates.sum.fdiv(rates.length - rates.count(0)).floor(2)
  end

end
