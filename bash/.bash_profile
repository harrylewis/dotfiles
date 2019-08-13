# load .profile, containing login, non-bash related initializations
source ~/.profile

# load .bashrc, containing non-login related bash initializations
source ~/.bashrc

# if either of these files does not exist, the shell will raise an error. If
# happens, simply recreate the symbolic link (ln -s src dst).
