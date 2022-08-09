class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :area

  has_one_attached :image
  belongs_to :user
  has_many :post_comments, dependent: :destroy

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_post_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type:'image/jpeg')
    end
      image.variant(resize_to_limit: [width, height]).processed
  end
end
