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
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/apache
brew tap sanemat/font

packages=(

    # GNU core utilities (those that come with OS X are outdated)
    coreutils

    # GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
    findutils

    # recent versions of some OS X tools
    homebrew/dupes/grep

    # Shell
    zsh
    peco

    # Git
    git

    # Utils
    autoconf
    automake
    openssl
    readline
    pkg-config
    pcre
    gperftools
    gdbm

    # Tools
    curl
    tree
    wget

    # Languages
    rbenv
    ruby-build
    #ndenv homebrewではいらなかった
    #node-build
    pyenv
)

echo "installing binaries..."
brew install ${packages[@]} && brew cleanup

# Casks
brew install caskroom/cask/brew-cask

# Apps
apps=(

    # Launcher

    # Browser
    # google-chrome
    # firefox

    # VM
    virtualbox

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
brew cask install --appdir="/Applications" ${apps[@]}

# fonts
fonts=(
    font-ricty-diminished
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}