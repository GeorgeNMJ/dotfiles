call plug#begin()

"colorscheme plugin
" Plug 'morhetz/gruvbox'

"auto-complete brackets plugin
Plug 'jiangmiao/auto-pairs'

" indexed search
Plug 'vim-scripts/IndexedSearch'

call plug#end()

" let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox

"enable syntax highligting
syntax on 

"tabs and spaces
set tabstop=4 "number of spaces per TAB
set softtabstop=4 "number of spaces in TAB when editing
set expandtab "considers TAB as spaces

"line numbers
set number

"show last command in bottom bar
set showcmd

" visual autocomplete
set wildmenu

" show matching characters [({})]
set showmatch

" autoindent
set autoindent

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" indexed search
let g:indexed_search_shortmess=1

" tmux truecolor feature
if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" allow mouse clicks
set mouse=a

" allow mouse click with alacritty
" if $TERM == 'alacritty'
"   set ttymouse=sgr
" endif


