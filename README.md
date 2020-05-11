# このアプリに関して

## アプリ名
Heroine 〜働く女性を支える情報&相談サイト
## 概要
25歳〜35歳の働く女性をターゲットにした、主に仕事に関する情報や幸せに生きるための情報を見ることができる
個人の悩みを投稿することができ、それに対するアドバイスもこのサイトの読者から頂けることができる。もしくは自分自身がアドバイスして、その人の悩みに相談に乗ることができる。
## 制作背景(意図)
私は社会人になってから主に仕事関係で悩んでいた時が多くあり、その時に私を助けてくれたのは情報でした。その情報によって自分の思考が変わったため、悩みがなくなり行動にも移せるようになりました。今仕事で悩んでいる方やこれからの人生で悩んでいる方にこのアプリを利用することで、思考を変え、行動すべきことが明確になります。
幸せに生きてほしいと想う願いで作成しました。
## DEMO

## 実装予定の内容

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

