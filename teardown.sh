# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo "-----> Removing symbolic dotfile links in root directory"

# bash
echo "       Removing ~/.profile"
echo "       Removing ~/.bashrc"
echo "       Removing ~/.profile_profile"

rm -f ~/.profile
rm -f ~/.bashrc
rm -f ~/.bash_profile

# vim
echo "       Removing ~/.vimrc"

rm -f ~/.vimrc

# git
echo "       Removing ~/.gitconfig"
echo "       Removing ~/.gitignore_global"
echo "       Removing ~/.gitmessage"

rm -f ~/.gitconfig
rm -f ~/.gitignore_global
rm -f ~/.gitmessage

# tmux
echo "       Removing ~/.tmux.conf"

rm -f ~/.tmux.conf

echo "-----> Done ☠️ "
