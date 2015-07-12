# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({name: :i5oq, :icon => "kuma.png"})
User.create({name: :Mogi, :icon => "mogi.png"})
User.create({name: :Tak, :icon => "tak.png"})

Relation.create({user_id: 1, to_user_id: 2})
Relation.create({user_id: 1, to_user_id: 3})
Relation.create({user_id: 2, to_user_id: 1})
Relation.create({user_id: 2, to_user_id: 3})
Relation.create({user_id: 3, to_user_id: 1})
Relation.create({user_id: 3, to_user_id: 2})

Article.create({user_id: 2, title: "ウサギちゃんみたいで、かわいいわぁ♪", tags: [], likes: 0, created_at: "2015-07-12 11:06:52", updated_at: "2015-07-12 11:06:52", photo_file_name: "mogi1.png", photo_content_type: "image/png", photo_file_size: 711258, photo_updated_at: "2015-07-12 11:06:51"})
Article.create({user_id: 2, title: "メキシコ亀甲竜", tags: [], likes: 0, created_at: "2015-07-12 11:07:42", updated_at: "2015-07-12 11:07:42", photo_file_name: "メキシコ亀甲竜.png", photo_content_type: "image/png", photo_file_size: 784662, photo_updated_at: "2015-07-12 11:07:41"})
Article.create({user_id: 2, title: "酔っぱらいの木", tags: [], likes: 0, created_at: "2015-07-12 11:08:32", updated_at: "2015-07-12 11:08:32", photo_file_name: "酔っぱらいの木.png", photo_content_type: "image/png", photo_file_size: 747969, photo_updated_at: "2015-07-12 11:08:32"})
Article.create({user_id: 1, title: "エビタイしちゃった", tags: [], likes: 0, created_at: "2015-07-12 11:09:33", updated_at: "2015-07-12 11:09:33", photo_file_name: "エビタイしちゃった.png", photo_content_type: "image/png", photo_file_size: 651563, photo_updated_at: "2015-07-12 11:09:32"})
Article.create({user_id: 1, title: "毎朝気になるので箱買い", tags: [], likes: 0, created_at: "2015-07-12 11:10:15", updated_at: "2015-07-12 11:10:15", photo_file_name: "毎朝気になるので箱買い.png", photo_content_type: "image/png", photo_file_size: 887426, photo_updated_at: "2015-07-12 11:10:15"})
Article.create({user_id: 1, title: "グリッチかかった", tags: [], likes: 0, created_at: "2015-07-12 11:11:15", updated_at: "2015-07-12 11:11:15", photo_file_name: "グリッチかかった.png", photo_content_type: "image/png", photo_file_size: 920004, photo_updated_at: "2015-07-12 11:11:14"})
Article.create({user_id: 4, title: "夏の香り", tags: [], likes: 0, created_at: "2015-07-12 11:12:32", updated_at: "2015-07-12 11:12:32", photo_file_name: "夏の香り.png", photo_content_type: "image/png", photo_file_size: 709980, photo_updated_at: "2015-07-12 11:12:32"})
Article.create({user_id: 3, title: "しました", tags: [], likes: 0, created_at: "2015-07-12 11:12:43", updated_at: "2015-07-12 11:12:43", photo_file_name: "しました.png", photo_content_type: "image/png", photo_file_size: 506023, photo_updated_at: "2015-07-12 11:12:43"})
Article.create({user_id: 4, title: "カツの大きさは誤算", tags: [], likes: 0, created_at: "2015-07-12 11:13:20", updated_at: "2015-07-12 11:13:20", photo_file_name: "カツの大きさは誤算.png", photo_content_type: "image/png", photo_file_size: 819834, photo_updated_at: "2015-07-12 11:13:20"})
Article.create({user_id: 4, title: "こっちは明日の朝かな", tags: [], likes: 0, created_at: "2015-07-12 11:14:10", updated_at: "2015-07-12 11:14:10", photo_file_name: "こっちは明日の朝かな.png", photo_content_type: "image/png", photo_file_size: 558653, photo_updated_at: "2015-07-12 11:14:09"})
