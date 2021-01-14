# tripalbum

## 概要
https://www.tripalbumapp.com/

このアプリは、写真及びYouTube動画を用いた旅行において楽しかったことやおすすめスポットなどを共有することで、また安心して旅行出来るようになるまでに旅行に対するモチベーションを高めることを目的としたアプリです。

![www tripalbumapp com_ (1)](https://user-images.githubusercontent.com/64494694/103653085-59d20180-4fa7-11eb-81f1-276862ad972f.png)

## 使用技術
* フロントエンド (HTML, CSS(Sass), Bootstrap4, Javascript）

* バックエンド (Ruby 2.6.3, Ruby on Rails 6.0.3.3)

* データベース (Mysql5.7)

* テスト (Rspec, FactoryBot, shoulda_matcher)

* Webサーバ (Puma + Nginx(socket通信))

* 開発・本番用環境構築 (docker, docker-compose)

* AWS(VPC, EC2, RDS(Mysql5.7), ALB, Route53, ACM, CLI)

* 自動テスト・デプロイ用パイプライン (Circleci)

* API(Google Maps API(Maps JavaScript API, Geocoding API))

## インフラ構成
![インフラ構成図](https://user-images.githubusercontent.com/64494694/103482821-54997900-4e26-11eb-89b0-2cd4418420df.jpg)
## DB構成
![er](https://user-images.githubusercontent.com/64494694/103537408-b108a100-4ed7-11eb-9d57-c4af6ad1ea2e.jpg)
## 機能一覧
### 認証
* サインイン、サインアップ機能（devise)
    * email、パスワード、ユーザー名、トプ画、プロフィールの設定（サインイン時はemailとパスワードのみ）
    * ゲストログイン機能（ゲストユーザーは退会、プロフィール変更不可）
    ![www tripalbumapp com_ (2)](https://user-images.githubusercontent.com/64494694/103654695-8d159000-4fa9-11eb-85a1-e82be5f0152b.png)![www tripalbumapp com_ (2)](https://user-images.githubusercontent.com/64494694/103654784-ab7b8b80-4fa9-11eb-99c1-58d645412db5.png)


### 投稿機能
* 画像・youTube動画投稿が可能（つぶやき・ハッシュタグ機能付き）
* Youtube動画は、URLを記入することで投稿が可能
* 投稿した画像及び動画の場所の名称または住所から、Googleマップを表示可能
* 投稿したアカウント内でのみ、投稿内容の削除が可能
![127 0 0 1_3000_posts_new](https://user-images.githubusercontent.com/64494694/103657531-5e011d80-4fad-11eb-8dd3-a6e75cf7c56c.png)

![127 0 0 1_3000_posts_3 (1)](https://user-images.githubusercontent.com/64494694/103658022-031bf600-4fae-11eb-9796-566f1c92914e.png)


### 検索機能
* ユーザー名で検索が可能

### ふぁぼ機能
* 投稿に対して、いいねをすることが可能
* Ajaxを用いた非同期いいねが可能

### コメント機能
* 投稿に対して、コメントをすることが可能
* Ajaxを用いた非同期コメントが可能

### プロフィール編集機能
* アカウントのメインページにおいて、プロフィールの編集が可能
    * email、パスワード、ユーザー名、トプ画、プロフィールの変更が可能

## 今後適用予定の機能
* youtube以外の動画投稿機能

