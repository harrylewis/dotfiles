# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo "-----> Setting symbolic links in root directory to dotfiles"

# zsh
echo "       Linking ~/.zshrc"

ln -s -f "$SCRIPTPATH/zsh/.zshrc" ~/.zshrc

# bash
echo "       Linking ~/.profile"
echo "       Linking ~/.bashrc"
echo "       Linking ~/.profile_profile"

ln -s -f "$SCRIPTPATH/bash/.profile" ~/.profile
ln -s -f "$SCRIPTPATH/bash/.bashrc" ~/.bashrc
ln -s -f "$SCRIPTPATH/bash/.bash_profile" ~/.bash_profile

# vim
echo "       Linking ~/.vimrc"

ln -s -f "$SCRIPTPATH/vim/.vimrc" ~/.vimrc

# git
echo "       Linking ~/.gitconfig"
echo "       Linking ~/.gitignore_global"
echo "       Linking ~/.gitmessage"

ln -s -f "$SCRIPTPATH/git/.gitconfig" ~/.gitconfig
ln -s -f "$SCRIPTPATH/git/.gitignore_global" ~/.gitignore_global
ln -s -f "$SCRIPTPATH/git/.gitmessage" ~/.gitmessage

# tmux
echo "       Linking ~/.tmux.conf"

ln -s -f "$SCRIPTPATH/tmux/.tmux.conf" ~/.tmux.conf

echo "-----> Done 🔗"
