# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username:  "管理者",
  joined: "2020"
  email: "admin@example.jp",
  password:  "admin1234",
  password_confirmation: "admin1234",
  admin: true)

Check.create!(title:  "基礎項目",
  user_id: "4",
  item1: "自己紹介・ラポールができた",
  item2: "アポの目的を伝えることができた",
  item3: "ソーシャルタイプに合わせた対応ができた",
  item4: "先方が喜ぶ情報を伝えることができた",
  item5: "先方の状況を確認することができた",
  item6: "先方の興味・関心を知ることができた",
  item7: "先方の要望・要求を理解できた",
  item8: "先方が抱えている不を聞くことができた",
  item9: "課題のすり合わせができた",
  item10: "必要性の確認ができた",
  item11: "相場感を伝えることができた",
  item12: "期待値の調整ができた",
  item13: "商品の案内ができた",
  item14: "先方が求めるプランの提案ができた",
  item15: "課題を解決するためのプランの提案ができた",
  item16: "クロージングできた",
  item17: "不安・疑問を払拭することができた",
  item18: "今後のスケジュールを確認できた",
  item19: "宿題をいただくことができた",
  item20: "紹介を依頼することができた")