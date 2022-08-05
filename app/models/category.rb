class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: 'その他'},
    {id: 2, name: '観光'},
    {id: 3, name: 'ショッピング'},
    {id: 4, name: '飲食店'},
    {id: 5, name: 'アクテビティ'}
  ]
  include ActiveHash::Associations
  has_many :post
end