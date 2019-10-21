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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false, foreign_key: true|
|email|integer|null: false, foreign_key: true|
|password|integer|null: false, foreign_key: true|



### Association
has_many :tweets
has_many :pictures

## tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text||
|user_id|integer|null: false, foreign_key: true|

### Association
belongs_to :user

## picturesテーブル

|Column|Type|Options|
|------|----|-------|
|image|text||

### Association
belongs_to :user



