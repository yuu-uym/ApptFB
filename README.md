# README
# アプリケーション名
  

# 目指した課題解決	
##  ターゲット
  営業職の新人と教育担当。  
  電話の数や商談の数ではなく、質をもっと高めていきたい。  
  本当は商談後都度振り返って共有したいが、忙しくてなかなか時間もとれなかったり  
  指摘するポイントが属人的になったりしているところが問題だと感じている。  
  商談ごとにポイントを明確にして振り返りをしていきたいと考えている。  
##  課題 
- 営業プロセス上のポイントの可視化（例：ラポール５点・ヒアリング５点・プレ５点など）
- 他者からの評価と自身の認識のすり合わせ
- 前月の結果と比較して、伸びているところを褒めたい
- ネクストアクションの設定と振り返り

# アプリケーション概要	
  - 管理者ユーザーはログイン後、チェックリストを作成することができる。  
    あらかじめ雛形として「基礎項目」というチェックリストが保存されている。
  - ユーザーは、チェックリストの内容を確認することができる。  
    チェックリストを登録したユーザーのみ修正が可能。
  - ユーザーは、アポイントを取得したら社名と日時とチェックリストを保存することができる。
  - 商談終了後、チェックリストに沿った点数の入力と、商談結果の保存ができる。

# URL	
https://appt-fb.herokuapp.com/

# テスト用アカウント
## 管理者
  email:　admin@example.jp  
  password:　admin1234

## 営業メンバー
  email:　member@example.jp   
  password:　member1234


# 利用方法	
## 管理者のみ
  - ログインページからログイン
  - トップページの左サイドバー「チェックリスト追加」からチェックリストを追加  
    ※メンバーとしてログインしたときには非表示
  - トップページの左サイドバー「チェックリスト一覧」からチェックリストの修正
## 営業メンバー・管理者
  - 新規登録・ログインページからログイン
  - トップページの左サイドバー「アポイント情報」から、アポイントの登録と一覧の確認
  - アポイント情報ページで該当アポの編集から、点数と商談結果の入力
  - アポイント一覧ページは、商談結果のステータスによって社名の表示位置が変わる

# 洗い出した要件	

## 商談相手の管理
  ユーザーがアポイントの登録を行うことができる。
  - アポイント一覧ページを実装。社名、約束日、チェックリストを登録する
  - 編集ページから、もともと選んでいたチェックリストに基づくチェックを行う
  - 一覧ページでの登録と、編集ページの点数計算は非同期通信を用いる

## チェック項目
  管理者のみチェックリストの登録・編集を行うことができる。
  - チェックリスト追加ページを実装。タイトルと項目１は必須。項目は最大20こまでを登録する
  - 編集ページから項目の修正が可能

# 実装した機能についてのGIFと説明	

# 実装予定の機能	
##  コメント機能
##  月次振り返り機能

# ローカルでの動作方法	
  git cloneしてから、ローカルで動作をさせるまでに必要なコマンド  
  % bundle install  
  % rails db:create  
  % rails db:migrate  
  % rails db:seed  
  Ruby on Rails のバージョン 6.0.0

# テーブル設計
## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| admin              | string | null: false |

### Association

- has_many :appointments
- has_many :checks
- has_one :comment

## appointments テーブル
| Column               | Type       | Options                        |
| -------------------- | ---------- | -----------                    |
| company              | string     | null: false                    |
| appt_date            | date   | null: false                    |
| result_id            | integer    |                    |
| score                | integer    |                   |
| user                 | references | null: false,foreign_key: true  | 

### Association

- belongs_to :user
- has_one :comment
- has_many :checks
- belongs_to_active_hash :result

## check テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| title            | string     | null: false                    |
| item1            | string     | null: false                    |
| item2            | string     |                                |
| item3            | string     |                                |
| item4            | string     |                                |
| item5            | string     |                                |
| item6            | string     |                                |
| item7            | string     |                                |
| item8            | string     |                                |
| item9            | string     |                                |
| item10           | string     |                                |
| item11           | string     |                                |
| item12           | string     |                                |
| item13           | string     |                                |
| item14           | string     |                                |
| item15           | string     |                                |
| item16           | string     |                                |
| item17           | string     |                                |
| item18           | string     |                                |
| item19           | string     |                                |
| item20           | string     |                                |
| appoint          | references | null: false,foreign_key: true  | 
| user             | references | null: false,foreign_key: true  | 

### Association

- belongs_to :appointments
- belongs_to :user

# commentsテーブル

| Column           | Type       | Options                        |
| -------------    | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true | 
| appoint          | references | null: false, foreign_key: true |

### Association

- belongs_to :appointments
- belongs_to :user