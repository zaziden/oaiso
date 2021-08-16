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

## users テーブル（ショップ）

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
* has_many :guests
* has_many :menus
* has_many :checks

## guests テーブル（客情報）

| Column        | Type ----  | Options                        |
| ------------- | ---------- | -------------------------------|
| guest_name    | string     | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association
* belongs_to :user
* has_many :checks

## menus テーブル（ドリンクメニュー）

| Column    | Type         | Options                        |
| ----------| ------------ | ------------------------------ |
| menu_name | string       | null: false                    |
| price     | integer      | null: false                    |
| user      | references   | null: false, foreign_key: true |

### Association
* belongs_to :user
* belongs_to :chek

## checks テーブル（注文）

| Column     | Type       | Options                        |
| -----------| ---------- | -------------------------------|
| guest      | references | null: false, foreign_key: true |
| user       | references | null: false, foreign_key: true |
| menu       | references | null: false, foreign_key: true |
| cup        | integer    | null: false                    |

### Association
* belongs_to :user
* belongs_to :gest
* has_one :menu
* belongs_to :sale

## sales テーブル（お会計）

| Column     | Type       | Options                        |
| -----------|------------|--------------------------------|
| all_price  | integer    | null: false                    |
| guest      | references | null: false, foreign_key: true |
| user       | references | null: false, foreign_key: true |
| check      | references | null: false, foreign_key: true |

### Association
* belongs_to :user
* belongs_to :gest
* has_many :checks





