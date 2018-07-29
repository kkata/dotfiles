#!/bin/sh

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done

# prezto set up
if [ ! -L ~/.zprezto -a -d ~/dotfiles/prezto ]; then
ln -s ~/dotfiles/prezto ~/.zprezto
fi

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END