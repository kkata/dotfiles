## 全般

https://github.com/oinume/dotfiles

http://oinume.hatenablog.com/entry/improve-my-terminal-with-zsh-prezto

を参考

## 構築
1. Xcodeと[command line tool](https://developer.apple.com/downloads/index.action)をインストール
2. デフォルトのshellをzshにする `chsh -s /bin/zsh`<br>
  shellの再起動 `exec $SHELL -l`
3. homebrewのインストール<br>
  dotfilesディレクトリで `./homebrew.sh`
4. dotfileのセットアップ<br>
  dotfilesディレクトリで `./setup.sh`

ターミナルのカラー https://github.com/KeitaNakamura/neodark.vim

## sublime
http://qiita.com/matsu_chara/items/b58564bba37e81637057

リポジトリ<br>
https://bitbucket.org/kkata/sublime_setting

## Mac

```
隠しファイルや隠しフォルダを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
Finder再起動
killall Finder
```

Macで.DS_Storeファイルを作らない方法&削除ツール<br>
http://blancbooth.com/archives/62

Macの隠された設定を変更する84個のハック集<br>
http://tukaikta.blog135.fc2.com/blog-entry-251.html

OS X Yosemite / MacBook Pro (Early 2015) の開発環境セットアップ<br>
http://akiyoko.hatenablog.jp/entry/2015/09/22/230839

ガチで便利！Mac歴100年の僕が最強だと思う、US配列キーボードの日本語入力環境設定<br>
http://www.moxbit.com/2012/12/mac-us-keyboard-japanese-input-setting.html

BetterSnapTool<br>
https://itunes.apple.com/jp/app/bettersnaptool/id417375580?mt=12

PixelSnap<br>
https://getpixelsnap.com/

wappalyzer<br>
https://www.wappalyzer.com/

istatmenus<br>
https://bjango.com/mac/istatmenus/

## Git

```
$ mkdir ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa
$ pbcopy < ~/.ssh/id_rsa.pub
```

gitHubでssh接続する手順<br>
http://qiita.com/shizuma/items/2b2f873a0034839e47ce

Git submodule の基礎<br>
http://qiita.com/sotarok/items/0d525e568a6088f6f6bb
