"  ----------------------------------------------------------------------------
"
"  Description: This file holds all VIM configurations
"
"  Sections:
"  1. VIM User Interface
"  2. Colours and Fonts
"  3. Text, Tab and Indentation
"  4. Editing Mappings
"
"  ----------------------------------------------------------------------------

"  -------------------------------
"  1. VIM User Interface
"  -------------------------------

"  syntax highlighting
   set nocompatible
   syntax on
   filetype on

"  show current position in status bar
   set ruler

"  show line numbers and relative line numbers
   set relativenumber number

"  configure backsapce to act as expected
   set backspace=indent,eol,start

"  search highlighting
   set hlsearch

"  incremental search
   set incsearch

"  list options
   set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
   set list
   " set nolist (to turn off)

"  allow selecting of text on mouse click
"  set mouse=a
"  this was doing some weird things with scrolling, and was therefore commented out

"  status bar always on
   set laststatus=2
   set scrolloff=1

"  -------------------------------
"  2. Colours and Fonts
"  -------------------------------
   colorscheme torte

   autocmd FileType ruby set commentstring=#\ %s
   " this uses vim commentary. alternatively, use
   " ctrl-v (visual mode), pick block, shift-i, insert text, esc-esc to comment
   " ctrl-v (visual mode), pick block, d-x

"  -------------------------------
"  3. Text, Tab and Indentation
"  -------------------------------

"  1 tab = 2 spaces
   set tabstop=2
   set shiftwidth=2
   set softtabstop=2
   set expandtab

"  autoindentation
   set autoindent

"  folding
   set foldmethod=indent
   set foldlevel=99

"  autosave folds
"  (https://til.hashrocket.com/posts/17c44eda91-persistent-folds-between-vim-sessions)
   augroup savefolds
     autocmd!
     autocmd BufWinLeave * mkview
     autocmd BufWinEnter * silent loadview
   augroup end

   autocmd FileType ruby setlocal commentstring=#\ %s
   autocmd BufNewFile,BufRead *.slim set filetype=slim

"  -------------------------------
"  4. Editing Mappings
"  -------------------------------

"  remap code folding
   nnoremap <space> za
