# アプリケーション名：gamekeijiban

# アプリケーション概要
userがプレイしたゲームで面白かったものや、面白くなかったものなどの評価ができる。

# URL：

# テスト用アカウント： 

# 利用方法
user情報はニックネームのみの登録で利用可能。
ゲームに関するタイトル、説明文、ジャンル、機種を必須記入項目とし、  
画像は任意での投稿ができるようにする。

#　課題解決
user同士で自分の面白かったゲームや面白くなかった情報共有をする  
簡易的に利用できる場所として。

# 要件定義

# 画像・GIF

# 実装予定の機能
投稿内容にタグ付けを行い、ジャンルごとの検索ができるようにする。

## users テーブル

| Column             | Type               | Options         |
| ------------------ | ------------------ | --------------- |
| nickname           | string             | NOT NULL        |

### Association

- has_many :tweets
- has_many :comments

## tweets テーブル

| Column            | Type       | Options      |
| ----------------- | ---------- | ------------ |
| title             | string     | NOT NULL     |
| explanatory_text  | text       | NOT NULL     |
| game_model_id     | integer    | NOT NULL     |
| genre_id          | integer    | NOT NULL     |
| user              | references | NOT NULL, FK |

### Association

- belongs_to :user
- belongs_to :game_model
- belongs_to :genre
- has_many :comments

## comments テーブル

| Column      | Type       | Option       |
| ----------- | ---------- | ------------ |
| user        | references | NOT NULL, FK |
| tweet       | references | NOT NULL, FK |

### Association

- belongs_to :user
- belongs_to :tweet