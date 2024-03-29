# Check for Homebrew,Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
printf "Update recipes? [Y/n]: " && read ANS
if [ "${ANS}" = "Y" ]; then
    brew update
fi

# Upgrade all
printf "Upgrade? [Y/n]: " && read ANS
if [ "${ANS}" = "Y" ]; then
    brew upgrade
fi

# Add Repository
brew tap homebrew/cask-fonts

packages=(

    # GNU core utilities (those that come with OS X are outdated)
    coreutils

    # GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
    findutils

    # recent versions of some OS X tools
    # homebrew/dupes/grep

    # Shell
    zsh
    # peco
    fzf
    tmux
    reattach-to-user-namespace
    zsh-autosuggestions

    # Git
    git
    ghq
    git-delta

    # Utils
    autoconf
    automake
    openssl
    readline
    pkg-config
    pcre
    gperftools
    # Caskroom/cask/xquartz

    # Tools
    curl
    tree
    wget
    ag
    fd
    nano
    hub
    # direnv

    # Languages
    rbenv
    ruby-build
    nodenv
    pyenv
    go
)

echo "installing binaries..."
brew install ${packages[@]} && brew cleanup

# Apps
apps=(

    # Launcher

    # Browser
    # google-chrome
    # firefox

    # VM
    # virtualbox

    # Java

    # etc ...
    appcleaner

    # development
    iterm2
    licecap
    sublime-text

)

# Install apps to /Applications
echo "installing applications..."
brew install --appdir="/Applications" ${apps[@]} --cask

# fonts
fonts=(
    font-ricty-diminished
    font-plemol-jp
)

# install fonts
echo "installing fonts..."
brew install ${fonts[@]} --cask
