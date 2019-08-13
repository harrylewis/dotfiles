# Dotfiles

This repository contains a collection of my personal dotfiles. It includes
setup and teardown scripts, so you can easily use this yourself. It has been
developed with Mac OSX or a Linux operating system in mind.

## Setup

To setup the dotfile configurations, execute the following in your bash prompt:

```bash
$ chmod +x /path/to/setup.sh
$ /path/to/setup.sh
-----> Setting symbolic links to root directory for dotfiles
       Linking ~/.profile
       Linking ~/.bashrc
       Linking ~/.profile_profile
       Linking ~/.vimrc
       Linking ~/.gitconfig
       Linking ~/.gitignore_global
       Linking ~/.gitmessage
       Linking ~/.tmux.conf
-----> Done 🔗
```

## Teardown

**WARNING** This is a dangerous operation. Running this will force the removal of
all the files listed below, even if you have overwritten them.

To teardown the setup, execute the following in your bash prompt:

```bash
$ chmod +x /path/to/teardown.sh
$ /path/to/teardown.sh
-----> Removing symbolic dotfile links in root directory
       Removing ~/.profile
       Removing ~/.bashrc
       Removing ~/.profile_profile
       Removing ~/.vimrc
       Removing ~/.gitconfig
       Removing ~/.gitignore_global
       Removing ~/.gitmessage
       Removing ~/.tmux.conf
-----> Done ☠️
```
