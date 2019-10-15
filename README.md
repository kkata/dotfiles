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

**問題**  
`dotfiles/prezto/modules/prompt/external` のsubmodule内が空のままだったので `git submodule init` `git submodule update` する必要あり。
