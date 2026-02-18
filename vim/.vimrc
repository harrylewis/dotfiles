" syntax highlighting
set nocompatible
syntax on
filetype on

" show current position in status bar
set ruler

" show line numbers and relative line numbers
set relativenumber number

" configure backsapce to act as expected
set backspace=indent,eol,start

" search highlighting
set hlsearch

" incremental search
set incsearch

set splitbelow
set splitright

" list options
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list
" set nolist (to turn off)

" allow selecting of text on mouse click
" set mouse=a
" this was doing some weird things with scrolling, and was therefore commented out

" status bar always on
set laststatus=2
set scrolloff=1

colorscheme torte

autocmd FileType ruby set commentstring=#\ %s
" this uses vim commentary. alternatively, use
" ctrl-v (visual mode), pick block, shift-i, insert text, esc-esc to comment
" ctrl-v (visual mode), pick block, d-x

" 1 tab = 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" autoindentation
set autoindent

" folding
set foldmethod=indent
set foldlevel=99

" autosave folds
" (https://til.hashrocket.com/posts/17c44eda91-persistent-folds-between-vim-sessions)
" https://vi.stackexchange.com/questions/13864/bufwinleave-mkview-with-unnamed-file-error-32
augroup savefolds
  autocmd!
  autocmd BufWinLeave ?* mkview
  autocmd BufWinEnter ?* silent loadview
augroup end

autocmd FileType ruby setlocal commentstring=#\ %s
autocmd BufNewFile,BufRead *.slim set filetype=slim

" remap code folding
nnoremap <space> za
