# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|birthday|date|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|phone_number|integer|null: false, unique: true|
|prefecture_id|int|
|city|varchar|
|block|varchar|
|building|varchar|


## productsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text||
|store|references|null: false, foreign_key: true|
|price|integer|null: false|

### Association
- belongs_to :store


## storesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text||

### Association
- has_many :products

