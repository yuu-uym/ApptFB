# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
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
| datetime             | datetime   | null: false                    |
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