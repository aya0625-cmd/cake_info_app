# このアプリに関して

## アプリ名
Heroine 〜働く女性を支える情報&相談サイト

## 概要
25歳〜35歳の働く女性をターゲットにした、主に仕事に関する情報や幸せに生きるための情報を見ることができる。又、悩みを投稿することができ、それに対するアドバイス機能もあり、悩みを共有する。

## 制作背景(意図)
私は社会人になってから主に仕事関係で悩んでいた時が多くあり、その時に私を助けてくれたのは情報でした。その情報によって自分の思考が変わったため、悩みがなくなり行動にも移せるようになりました。今仕事で悩んでいる方やこれからの人生で悩んでいる方が思考を変え、行動すべきことが明確になることがこのアプリの目的です。

## DEMO
### ↓トップページビュー

![a2c615d2c7c36e16dc585d25aad614ca](https://user-images.githubusercontent.com/58415130/81924196-c152cf80-9619-11ea-8ca5-7236d8b7e919.gif)


### ↓キーワード検索機能

![f374afd359c1d278cb2d45debf5a460b](https://user-images.githubusercontent.com/58415130/81925186-23600480-961b-11ea-8497-34bbb3883a21.gif)


### ↓ニュース詳細ページ&いいね機能

![8e7619e621005c972be46a8a8f069974](https://user-images.githubusercontent.com/58415130/81925490-95d0e480-961b-11ea-8b8b-de5c662ef2a6.gif)


### ↓悩み相談ページ

![634c831da69a65425b878a9383e05186](https://user-images.githubusercontent.com/58415130/81926125-79817780-961c-11ea-9e7a-73d88e8fc8af.gif)

## 実装予定の内容
　・個人に特化した情報を提供出来る機能
　・本番環境設定
 
# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|phone_number|integer|null: false, unique: true|
 
 ### Association
- has_many :comments
- has_many :counselings
- has_many :goods, dependent: :destroy
- has_many :gooded_messages, through: :goods, source: :message

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|image|text||
|category|references|null: false, foreign_key: true|

### Association
- belongs_to :category
- has_many :goods, dependent: :destroy
- has_many :gooded_users, through: :goods, source: :user


## yoursテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|image|text||
|gender|string|null: false|
|birthday|date|null: false|
|hobby|text|null: false|
|age|integer|null: false|
|job|string|null: false|
|marriage|string|null: false|
|child|string|null: false|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to user


## counselingsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|kind|integer|null: false|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to_active_hash :list
- has_many :comments
- belongs_to :user


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|jp|string|null: false|
|kind|integer|null: false|

### Association
- has_many :messages


## goodsテーブル

|Column|Type|Options|
|------|----|-------|

|user|references|null: false, foreign_key: true|
|message|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :message

