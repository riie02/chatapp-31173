# アプリケーション名
chatapp-31173


# アプリケーション概要
ログインしているユーザーはリアルタイムでチャットを行うことができる


# URL
https://chatapp-31173.herokuapp.com/


# テスト用アカウント
ユーザー1 name: 山田太郎, Email: test2@co.jp,  Password: test02
ユーザー2 name: 佐藤花子, Email: test3@co.jp,  Password: test03


# 利用方法
ユーザー同士でチャット行い、情報の共有を行うことができる。
ユーザーは固定の掲示板を確認して、シェアーハウスの基本ルールを確認することができる。
また、固定の掲示板はユーザーであれば誰でも編集を行うことができる。


# 目指した課題解決
シェアーハウスの連絡や情報共有の手段がホワイトボードであったため、
すぐに連絡や情報共有ができるようなアプリを作成。
また、シェアーハウスの基本のルールが分からない時に固定の掲示板でいつでも確認できる。

# 洗い出した要件
ユーザー管理機能
リアルタイムチャット機能
固定掲示板の機能

# 実装した機能についてのGIFと説明

１ログインしていないユーザーがChatRoomに入ろうとするとログイン画面に遷移する。
  https://gyazo.com/0e88b4a466cb7b03151f9995e10ee181

2
# 実装予定の機能

# データベース設計
# ローカルでの動作方法




# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :messages
- has_many :explanation


## messages テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false,                   |
| user   | references | null: false, foreign_key: true |

### Association

-belongs_to :user


## explanation テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| text     | text   | null: false |

-belongs_to :user



