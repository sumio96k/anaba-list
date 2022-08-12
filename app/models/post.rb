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


  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_post_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type:'image/jpeg')
    end
      image.variant(resize_to_limit: [width, height]).processed
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
end
