## 全般

https://github.com/oinume/dotfiles  
http://oinume.hatenablog.com/entry/improve-my-terminal-with-zsh-prezto  
を参考

## 構築
1. Xcodeと[command line tool](https://developer.apple.com/downloads/index.action)をインストール  
2. homebrewのインストール  
  dotfilesディレクトリで `./homebrew.sh`  
3. dotfileのセットアップ  
  dotfilesディレクトリで `./setup.sh`  
4. デフォルトのshellをzshにする `chsh -s /bin/zsh`

### 問題
`dotfiles/prezto/modules/prompt/external` のsubmodule内が空のままだったので `git submodule init` `git submodule update` する必要あり。

ターミナルのカラー https://github.com/KeitaNakamura/neodark.vim

## sublime
http://qiita.com/matsu_chara/items/b58564bba37e81637057

リポジトリ  
https://bitbucket.org/kkata/sublime_setting

## Mac

```
隠しファイルや隠しフォルダを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
Finder再起動
killall Finder
```
shellの再起動 `exec $SHELL -l`

Macで.DS_Storeファイルを作らない方法&削除ツール  
http://blancbooth.com/archives/62  
Macの隠された設定を変更する84個のハック集  
http://tukaikta.blog135.fc2.com/blog-entry-251.html  
ガチで便利！Mac歴100年の僕が最強だと思う、US配列キーボードの日本語入力環境設定  
http://www.moxbit.com/2012/12/mac-us-keyboard-japanese-input-setting.html  
BetterSnapTool  
https://itunes.apple.com/jp/app/bettersnaptool/id417375580?mt=12  
PixelSnap  
https://getpixelsnap.com/  
wappalyzer  
https://www.wappalyzer.com/  
istatmenus  
https://bjango.com/mac/istatmenus/

## Git

```
$ mkdir ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa
$ pbcopy < ~/.ssh/id_rsa.pub
```

gitHubでssh接続する手順  
http://qiita.com/shizuma/items/2b2f873a0034839e47ce

Git submodule の基礎  
http://qiita.com/sotarok/items/0d525e568a6088f6f6bb
