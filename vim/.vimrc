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
   syntax on
   filetype on

"  show current position in status bar
   set ruler

"  show line numbers
   set number

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

   autocmd BufNewFile,BufRead *.coffee set filetype=coffee

   autocmd FileType ruby set commentstring=#\ %s
   " this uses vim commentary. alternatively, use
   " ctrl-v (visual mode), pick block, shift-i, insert text, esc-esc to comment
   " ctrl-v (visual mode), pick block, d-x

"  show column in color
   augroup colorcolumn
     autocmd!
     autocmd BufEnter * setlocal colorcolumn=81
   augroup end

   highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

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

"  python specific
   au BufNewFile,BufRead *.py set
     \ smartindent
     \ autoindent
     \ textwidth=79
     \ fileformat=unix
     \ encoding=utf-8

"  markdown specific
   au BufNewFile,BufRead *.md set
     \ textwidth=79
     \ fileformat=unix
     \ encoding=utf-8

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

"  indent guides using Vundle plugin
   let g:indent_guides_enable_on_vim_startup=1

   autocmd FileType ruby setlocal commentstring=#\ %s
   autocmd BufNewFile,BufRead *.slim set filetype=slim

"  -------------------------------
"  4. Editing Mappings
"  -------------------------------

"  remap code folding
   nnoremap <space> za
