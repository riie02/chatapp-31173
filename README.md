# アプリケーション名
chatapp-31173


# アプリケーション概要
シェアーハウス向けの情報の共有用チャットアプリ


# URL
  https://chatapp-31173.herokuapp.com/



# テスト用アカウント
> ユーザー1 name: 山田太郎, Email: test2@co.jp,  Password: test02

> ユーザー2 name: 佐藤花子, Email: test3@co.jp,  Password: test03


# 利用方法
・ ユーザー登録を行うことができる。

・ ユーザー同士でチャット行い、情報の共有を行うことができる。

・ ユーザーは固定の掲示板を確認して、シェアーハウスの基本ルールを確認することができる。

・ 固定の掲示板はユーザーであれば誰でも編集を行うことができる。


# 目指した課題解決
シェアーハウスの連絡や情報共有の手段がホワイトボードであったため、すぐに連絡や情報共有ができるようにしたい。また、シェアーハウスの基本のルールが分からない時（忘れてしまった時）に固定の掲示板でいつでも確認できるようにしたい。

# 洗い出した要件
 ・ユーザー管理機能

・ リアルタイムチャット機能

・ 固定掲示板の機能


# 実装した機能についてのGIFと説明

> ログインしていないユーザーがChatRoomに入ろうとするとログイン画面に遷移する。
  https://gyazo.com/0e88b4a466cb7b03151f9995e10ee181

> ユーザーはリロード（ページ遷移なし）で投稿を行える。
  投稿すると名前、投稿日時も一緒に投稿される。
  https://gyazo.com/85dc37d4f4eb9c6287eb53d6f8712522

> 別のユーザーもリロード（ページ遷移なし）投稿できることの確認。
  （同じく投稿すると名前、投稿日時も一緒に投稿される。）
  https://gyazo.com/33cfab37f1562fff8ffbe0db449b84df


# 実装予定の機能 

・チャット機能のJSのCSSの設定と見やすいようにデザインを加える
 （リロードするとチャット部分のCSSの使用が変わってしまうところがあるため）

・固定掲示板の実装

・無限スクロール機能


# データベース設計

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

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false,                   |
| user   | references | null: false, foreign_key: true |

-belongs_to :user


# ローカルでの動作方法

1. % https://github.com/riie02/chatapp-31173.git
2. % bundle install
3. % yarn install
4. % rails db:create
5. % rails db:migrate
6. % rails s
7. % http://localhost:3000/



