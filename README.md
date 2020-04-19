# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|birthday|date|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|phone_number|integer|null: false, unique: true|
 
 ### Association
- has_many :reservations


## productsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text||
|store|references|null: false, foreign_key: true|
|price|integer|null: false|

### Association
- belongs_to :store
- has_many :reservations


## storesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text||

### Association
- has_many :products


## reservationsテーブル

|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|time|integer|null: false|
|user|references|null: false, foreign_key: true|
|product|references|null: false, foreign_key: true|

### Association
- belong_to :user
- belong_to :product


