# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    {name: "管理者", email: "000@000", password: "000000", password_confirmation: "000000", admin: true,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/admin1.png"), filename:"admin1.png")},

    {name: "ぎんじ", email: "ginji@test.com", password: "password", password_confirmation: "password", admin: false, introduction: "初めまして！東京の穴場スポットを発信していきます！",
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")},

    {name: "りょうへい", email: "ryohei@test.com", password: "password", password_confirmation: "password", admin: false, introduction: "全国のサブカルなスポットを紹介するよ！",
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")},

    {name: "ゆうみ", email: "yumi@test.com", password: "password", password_confirmation: "password", admin: false, introduction: "私が本当に美味しいと思った本当は教えたくないレストランを紹介します",
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")},

    {name: "大山田太郎五郎", email: "taro@test.com", password: "password", password_confirmation: "password", admin: false, is_deleted: true, admin_memo: "test用です。",
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user4.png"), filename:"sample-user4.png")}
  ]
)

 posts = Post.create!(
  [
    {title: '東京タワーの下', body: '東京タワーを下から見るこの場所が好きです。', address: '東京都港区芝公園', category_id: 2, area_id: 93, user_id: users[1].id, rate: 1.75,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg")},

    {title: '大阪の地下お笑い劇場', body: '大阪なんばにひっそりとあるお笑い劇場です。アングラなお笑いが見れます', address: '大阪府難波', category_id: 2, area_id: 212, user_id: users[2].id,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg")},

    {title: '名古屋絶品台湾ラーメン', body: '名古屋にある日本で一番美味しい(と思っている)台湾ラーメンのお店です。', address: '愛知県名古屋市名東区', category_id: 4, area_id: 178, user_id: users[3].id, rate: 4.0,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg")},

    {title: '東京でサーフィンが体験できる!?', body: 'サーフィンが体験できる施設です', address: '東京都品川区', category_id: 5, area_id: 94, user_id: users[1].id, rate: 3.0,
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post4.jpg"), filename:"sample-post4.jpg")}
  ]
)

PostComment.create!(
  [
    #コメントが多いが評価が低い
    {user_id: users[3].id, post_id: posts[0].id,comment: "いいですね～！", rate: 2.0}, {user_id: users[2].id, post_id: posts[0].id,comment: "まあまあかな", rate: 1.5},
    {user_id: users[1].id, post_id: posts[0].id,comment: "いってみたい！"},
    #コメントが少なく評価が高い
    {user_id: users[3].id, post_id: posts[2].id,comment: "おいしそう！", rate: 4.0},
    #投稿が多いが評価はふつう
    {user_id: users[3].id, post_id: posts[3].id,comment: "すご～！", rate: 3.0}, {user_id: users[2].id, post_id: posts[3].id,comment: "楽しそう", rate: 3.0},

  ]
)

tags = Tag.create!(
  [
    {name: "エモい"},{name: "アングラ"},{name: "お笑い"},{name: "台湾ラーメン"},{name: "グルメ"},{name: "サーフィン"},{name: "夏"}
  ]
)

PostTag.create!(
  [
    {post_id: posts[0].id, tag_id: tags[0].id },{post_id: posts[1].id, tag_id: tags[1].id },{post_id: posts[1].id, tag_id: tags[2].id },
    {post_id: posts[2].id, tag_id: tags[3].id },{post_id: posts[2].id, tag_id: tags[4].id },{post_id: posts[3].id, tag_id: tags[5].id },
    {post_id: posts[3].id, tag_id: tags[6].id }
  ]
)
