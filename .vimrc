set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"Plugins
"

"colorscheme plugin
Plugin 'morhetz/gruvbox'

"auto-complete brackets plugin
Plugin 'jiangmiao/auto-pairs'

" vim + tmux plugins
Plugin 'preservim/vimux'
Plugin 'greghor/vim-pyShell'
Plugin 'julienr/vim-cellmode'

" fuzzy search
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }

" indexed search
Plugin 'vim-scripts/IndexedSearch'

" Autocomplete
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

autocmd vimenter * ++nested colorscheme gruvbox

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

"" Mappings

" vim cell-mode parameters
let g:cellmode_use_tmux=1
let g:cellmode_tmux_panenumber=1

" ipython-shell
noremap ,ss :call StartPyShell()<CR>
noremap ,sk :call StopPyShell()<CR>

" code execution
nnoremap ,l  :call PyShellSendLine()<CR>
noremap <C-a> :call RunTmuxPythonAllCellsAbove()<CR>

" jedi-vim autocomplete
let g:jedi#show_call_signatures = "1"
let g:jedi#use_splits_not_buffers = "right"

" indexed search
let g:indexed_search_shortmess=1

" tmux truecolor feature
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" allow mouse clicks
set mouse=a

" allow mouse click with alacritty
if $TERM == 'alacritty'
  set ttymouse=sgr
endif


