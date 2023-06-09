"--------------
" appearance
"--------------
set number             " show line number
set relativenumber 
set noshowmode         " disable mode(because of Vim-Airline)
set showcmd            " display command
set nolist             " do not display invisible characters
set wrap              
set linebreak
set cursorline
set ruler
set showtabline=2
set shortmess=I       " remove splash wording
set equalalways       " split windows are always equal size

"--------------
" split window
"--------------
set splitbelow
set splitright

"--------------
" Scroll
"--------------
set scrolloff=3

"--------------
" Tab and space
"--------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"--------------
" ColorScheme
"--------------
set t_Co=256  " Number of colors
syntax on

try
  set background=dark
  colorscheme gruvbox
  highlight EndOfBuffer cterm=NONE ctermfg=bg ctermbg=bg
catch
endtry

"--------------
" Sound
"--------------
" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

"修复SnipMate-deprecate启动错误
let g:snipMate = { 'snippet_version' : 1 }
