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

おまけ  
https://github.com/sindresorhus/quick-look-plugins

#### 問題
`dotfiles/prezto/modules/prompt/external` のsubmodule内が空のままだったので `git submodule init` `git submodule update` する必要あり。

ターミナルのカラー https://github.com/KeitaNakamura/neodark.vim

## Mac

```
隠しファイルや隠しフォルダを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
.DS_Storeファイルを作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores True
Finder再起動
killall Finder
```
shellの再起動 `exec $SHELL -l`

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

trailer  
http://ptsochantaris.github.io/trailer/

gitHubでssh接続する手順  
http://qiita.com/shizuma/items/2b2f873a0034839e47ce

Git submodule の基礎  
http://qiita.com/sotarok/items/0d525e568a6088f6f6bb
