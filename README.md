# README

## clients table

|Column|Type|Options|
|------|----| -------|
|nickname|string|nill: false, unique: true|
|email|string|nill: false, unique: true|
  <!-- ユーザー登録実装後"dependent: :destroy"を追記する -->

  ### Association
  <!-- - has_many :clients_categories
  - has_many :categories, through: :clients_categories -->
  - belong_to :message


<!-- ## categories table

|Column|Type|Options|
|------|----| -------|
|category|string|nill: false, unique: true| -->
  <!-- ユーザー登録実装後"dependent: :destroy"を追記する -->
<!-- 
  ### Association
  - has_many :clients_categories
  - has_many :clients, through: :clients_categories
  - has_many :messages,
  activehashで良い -->


<!-- ## clients_categories table

|Column|Type|Options|
|------|----| -------|
|client_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|

  ### Association
  - belong_to :client
  - belong_to :category -->


## messages table

|Column|Type|Options|
|------|----| -------|
|category|integer|null: false|
|message|text|nill: false|
|client_id|integer|null: false, foreign_key: true|

  ### Association
  - belong_to :client,
  - belong_to_active_hash :category



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
