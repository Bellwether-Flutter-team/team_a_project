# MatchingApp
## 事前準備

- コマンドプロンプトを短くしておくとターミナル操作がしやすいです
  
[【zsh】絶対やるべき！ターミナルでgitのブランチ名を表示&補完【git-prompt / git-completion】](https://qiita.com/mikan3rd/items/d41a8ca26523f950ea9d)

- git alias
  
git aliasを設定しておくと長いコマンドを打たなくていい

[【git】aliasの設定方法](https://qiita.com/chihiro/items/04813c707cc665de67c5)

- Githubのアカウント取得

ローカルにgitconfigの設定をする

gitconfigの設定確認を下記コマンドでする

```code
git config --global --edit
```

ユーザ名とメールアドレスを設定しておく

※下記のMy Nameとmyname@example.comは自身のGithubアカウントにする

```code
git config --global user.name "My Name"
git config --global user.email myname@example.com
```

- SSHKeyを生成してGithubに登録

下記リンクを参考にSSHKeyを生成してGithubに登録しておいてください

[GitHubでssh接続する手順ー公開鍵・秘密鍵の生成からー](https://qiita.com/shizuma/items/2b2f873a0034839e47ce)

## 開発環境構築

- VSCodeをインストールする

開発ではVSCodeを使うのでインストールしておいてください。インストールしたらFlutterとDartのプラグインを入れておいてください。

- Xcodeをインストールする

初回起動時にcommand-lineツールをインストールするので一度Xcodeを起動しておくこと。インストールできたら閉じて良い

- Android Studioをインストールする

Emulatorの設定をしておく

[[Android] エミュレータの作成、設定](https://akira-watson.com/android/avd-manager.html#3)

Pixel 4 / Android 11 / API 30

- git cloneしてきます

```code
git clone git@github.com:Bellwether-Flutter-team/FakeGCalendar.git
```

- asdfをインストールする

[asdf](https://asdf-vm.com/)

バージョン管理ツールにasdfを使います。  [Homebrewの公式サイト](https://brew.sh/index_ja)でインストールしてください。

```code
brew install asdf
```

- flutterとjavaをインストールします

プロジェクトルートに移動してflutterとjavaをインストールします

```code
cd FakeGCalendar
asdf install
asdf current    // インストールできたことを確認する
```

## 開発環境

- VSCode
- Xcode
- Android Studio
- Flutter 3.0.0
- JAVA openJDK 11

## 開発時のルール

- チャレンジは大歓迎
- 1日で終わらないような作業は無理をして終わらせない
- 1日で終わらない、見積もった工数よりも時間がかかりそうなものは無理をせず、タスクを分割してもよい
- 相談しやすい環境を作る
- 開発時に調べたことはどこかにメモしておこう
- 開発環境がほかのメンバーと同じかどうか必ず確認しよう

## [設計情報](./docs/design/design.md)

## [コーディング規約](./docs/coding-rule.md)

※リンク先に移動しました

## [Githubの運用方法について](./docs/GitHub_README.md)

## [アプリケーション設計](./docs/app_design/app_design.md)
