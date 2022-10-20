## 全般

https://github.com/oinume/dotfiles  
http://oinume.hatenablog.com/entry/improve-my-terminal-with-zsh-prezto  
を参考

## 構築

1. Xcode と[command line tool](https://developer.apple.com/downloads/index.action)をインストール
2. dotfiles ディレクトリで `./homebrew.sh`
3. dotfiles/prezto ディレクトリで `git submodule init`, `git submodule update`
4. dotfiles ディレクトリで `./setup.sh`

[hub](https://github.com/github/hub) の設定

`~/.config/hub` を作成して以下を記述  
トークンは [Personal access tokens](https://github.com/settings/tokens) から作成

```
---

github.com:

- protocol: https
  user: YOUR_USER_ID
  oauth_token: YOUR_OAUTH_TOKEN

```
