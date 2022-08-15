class Tag < ApplicationRecord
  has_many :post_tags, dependent: :destroy, foreign_key: 'tag_id'
  has_many :posts, through: :post_tags

  def self.search_for(content)
    tags = Tag.where("name LIKE?", "%#{content}%")
    return tags.inject([]) {|result, tag| result + tag.posts}
  end
end
