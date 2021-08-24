# README

## アプリケーション名
* oaiso

## アプリケーション概要
* 主に飲食店の売上計算やデジタル伝票としてお使いいただけます。

## テスト用アカウント
* 

## 利用方法
* 

## 目指した課題解決
* ノートや紙伝票で管理していた売上やオーダーなどを、パソコンやタブレット1台で簡単に管理できる事を目指しました。

## 洗い出した要件
* 

## 実装予定の機能
* 経費の管理機能
* 日、月、年ごとに売上金額等を閲覧できる機能

## ローカルでの動作方法
* 

# テーブル設計

## users テーブル（ショップ）

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
* has_many :gests
* has_many :menus
* has_many :checks
* has_many :rooms

## gests テーブル（客情報）

| Column        | Type       | Options                        |
| ------------- | ---------- | -------------------------------|
| gest_name     | string     | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association
* belongs_to :user

## menus テーブル（メニュー）

| Column    | Type         | Options                        |
| ----------| ------------ | ------------------------------ |
| menu_name | string       | null: false                    |
| price     | integer      | null: false                    |
| user      | references   | null: false, foreign_key: true |

### Association
* belongs_to :user

## checks テーブル（注文）

| Column      | Type       | Options                        |
| ------------| ---------- | -------------------------------|
| room        | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |
| menuname    | string     | null: false                    |
| menuprice   | integer    | null: false                    |
| cup         | integer    | null: false                    |
| menuallprice| integer    | null: false                    |

### Association
* belongs_to :user
* belongs_to :room

## room テーブル（伝票）

| Column     | Type       | Options                        |
| -----------|------------|--------------------------------|
| user       | references | null: false, foreign_key: true |
| room_name  | integer    | null: false                    |

### Association
* belongs_to :user
* has_one :check
