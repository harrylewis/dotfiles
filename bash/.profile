#  -----------------------------------------------------------------------------
#
#  Description: This file contains all the environment path declarations
#
#  **Note that most path declarations precede the machine configured path, i.e.
#
#  PATH="/new/path:${PATH}"
#
#  as opposed to
#
#  PATH="${PATH}:/new/path"
#
#  because the [$PATH is searched from the beginning to the end, with the first
#  matching executable being run ... so directories at the beginning of $PATH
#  take precedence over those that come later] as per:
#
#  https://superuser.com/questions/238987/how-does-unix-search-for-executable-files
#
#  -----------------------------------------------------------------------------

#  Python
#  ------------------------------------------------------------

#  Currently, versions 2.7.14, 3.5.0, and 3.6.6 are installed on this machine.
#  Change the PYXVERSION here, and resource to change the Python version being
#  used.

   PY2VERSION=2.7 # 2.7
   PY3VERSION=3.7 # 3.5, 3.6, or 3.7

   PATH="/Library/Frameworks/Python.framework/Versions/${PY2VERSION}/bin:${PATH}"
   export PATH

   PATH="/Library/Frameworks/Python.framework/Versions/${PY3VERSION}/bin:${PATH}"
   export PATH

#  NGROK
#  ------------------------------------------------------------

   PATH="/usr/local/ngrok:${PATH}"
   export PATH

# GO
# ------------------------------------------------------------------------------

  export GOPATH=~/go

# All installed executables
# ------------------------------------------------------------------------------

  PATH="/usr/local/bin:${PATH}"
  export PATH

# PostgreSQL
# ------------------------------------------------------------------------------

  export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
