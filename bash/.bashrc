#  ----------------------------------------------------------------------------
#
#  Description: This file holds all my bash configurations and aliases
#
#
#  Sections:
#  1. Environment Configuration
#  2. Make Terminal Better (remapping defaults, adding functionality)
#  3. Ruby
#  4. Functions
#  5. Reminders & Notes
#
#  ----------------------------------------------------------------------------

#  -------------------------------
#  1. Environment Configuration
#  -------------------------------

#  Change Prompt
#  ------------------------------------------------------------

#  You can modify the PS1 (primary), PS2 (secondary), PS3, and PS4 environment
#  variables to modify the command line prompt. Comment the following line out
#  and resource to see the change.

#  export PS1="___________________    | \w @ \h (\u) \n| => "
#  old - export PS1="\h:\W \u\$"
   export PS1="[\W]\$ "

#  Set Paths
#  ------------------------------------------------------------

#  All paths are set in .profile.

  PATH="/usr/local/bin:${PATH}"
  export PATH

#  Set Default Editor
#  ------------------------------------------------------------

   export EDITOR=/usr/bin/vim

#  Set Ruby version
#  ------------------------------------------------------------

   export RBENV_VERSION=2.6.3

#  Cronitor
#  ------------------------------------------------------------

   export CRONITOR_CONFIG="~/Documents/cronitor.json"

#  PostgreSQL
#  ------------------------------------------------------------

   export PGDATA=/usr/local/var/postgres

#  Activate autoenv
#  ------------------------------------------------------------

#   . $(brew --prefix autoenv)/activate.sh

#  -------------------------------
#  2. Make Terminal Better
#  -------------------------------

   alias l="ls -al"               # shows hidden files
   alias pv="py_virtualenv 2"     # py_virtualenv defined below
   alias pv3="py_virtualenv 3"
   alias count="count_characters"
   alias branch="current_git_branch" # or git rev-parse --abbrev-ref HEAD
   alias be="bundle exec"
   alias bes="bundle exec spring"
   alias besr="bundle exec spring rspec"
   alias besrf="rspec-fzf"
   alias routes="bundle exec spring rake routes"
   alias cdh="cd ~/Documents/himama/hm-proj"
   alias grep="grep --color -n"
   alias g="git"
   alias mux="tmuxinator"
   alias vim-plugins="ls -1 ~/.vim/pack/harrylewis/start"
   alias battery="pmset -g batt | egrep -o '[0-9]{1,3}%'"
   alias bash-reset=". ~/.bash_profile"
   alias pg=pg_ctl # requires PostgreSQL to be installed
   alias git-ssh=add_id_rsa_to_identities
   alias qa="heroku apps | grep harry | cut -d: -f2"
   alias vincognito="vi -i NONE"
   alias mongod="mongod --dbpath ~/data/db"
   alias vf="vi-fzf"
   alias asciint="convert_ascii_integer_to_char"
   alias n='seq 1 5 | xargs -I{}'

#  ------------------------------
#  3. Ruby
#  ------------------------------

#  Initialize rbenv when starting bash
#  ------------------------------------------------------------

   eval "$(rbenv init -)"

#  ------------------------------
#  4. Functions
#  ------------------------------

#  Create, Enter, and Activate a Python Virtual Environment
#  ------------------------------------------------------------

  py_virtualenv() {
    # prompt user to input 2 arguments, with the first one being '2' or '3'
    if [[ -z $2 ]] || ([[ $1 != 2 ]] && [[ $1 != 3 ]])
    then
      echo "usage: pv_virtualenv (2 | 3) directory ..."
    else
      mkdir $2

      if [[ $1 == 2 ]]
      then
        # create virtual python environment using the version defined by PATH
        # variable PY2VERSION
        python -m virtualenv $2
      else
        # ... PY3VERSION
        python3 -m virtualenv $2
      fi

      cd $2
      source ./bin/activate
    fi
  }

# Count the number of characters in a string
#  ------------------------------------------------------------

  count_characters() {
    STRING="$1"
    echo ${#STRING}
  }

#  Get the current Git branch
#  ------------------------------------------------------------

  current_git_branch() {
    git branch | grep \* | cut -d ' ' -f2
  }

#  Permanently add id_rsa SSH key to list of identities
#  ------------------------------------------------------------

  add_id_rsa_to_identities() {
    eval `ssh-agent -s`
    ssh-add -K ~/.ssh/id_rsa
  }

# Create .gitignore using gitignore.io
# -------------------------------------------------------------

gi() {
  curl -sL https://www.gitignore.io/api/$@;
}

# Create utility function to insert text into clipboard
# -------------------------------------------------------------

clip() {
  echo "$1" | tr -d '\n' | pbcopy
  echo "Copied '`echo "$1" | tr -d "\n"`' to the general clipboard."
}

# Create utility function to get GitHub line link
# -------------------------------------------------------------

higili() {
  clip "https://github.com/HiMamaInc/hm-proj/blob/master/$1#L$2"
}

# Git Bash completation
# -------------------------------------------------------------

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#  -------------------------------
#  5. Reminder & Notes
#  -------------------------------

#  resource the bash profile
#  -------------------------------
#  . ~/.bash_profile

#  create symbolic link
#  -------------------------------
#  ln -s src dst

#  this file is based on https://natelandau.com/my-mac-osx-bash_profile/
