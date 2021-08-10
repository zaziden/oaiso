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

## shops テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| shop_name          | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
* has_many :guests
* has_many :menus
* has_many :checks

## guests テーブル

| Column        | Type ----  | Options                        |
| ------------- | ---------- | -------------------------------|
| guest_name    | string     | null: false                    |
| shop          | references | null: false, foreign_key: true |

### Association
* belongs_to :shop
* has_many :checks

## menus テーブル

| Column    | Type         | Options                        |
| ----------| ------------ | ------------------------------ |
| menu_name | string       | null: false                    |
| price     | integer      | null: false                    |
| shop      | references   | null: false, foreign_key: true |

### Association
* belongs_to :shop
* belongs_to :chek

## checks テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | -------------------------------|
| guest      | references | null: false, foreign_key: true |
| date       | datetime   | null: false                    |
| menu       | references | null: false, foreign_key: true |
| shop       | references | null: false, foreign_key: true |
| all_price  | integer    | null: false                    |

### Association
* belongs_to :shop
* belongs_to :gest
* has_many :menus




