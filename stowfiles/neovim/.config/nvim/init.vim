""""""""""""""""""""
" nvim settings    "
""""""""""""""""""""
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set smartcase               " ... unless the query has capital letters.
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set autoindent              " indent a new line the same amount as the line just typed
set shiftwidth=4            " width for autoindents
set nolist
set number                  " add line numbers
set hidden
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus  " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
" set laststatus=3          " have a global statusline
set nowrap
set termguicolors



""""""""""""""""""""""
" Plugins
""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    " colorschemes
    " Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'cocopon/iceberg.vim'

    " statusline settings
    "Plug 'glepnir/galaxyline.nvim' , { 'branch': 'main' }
    " If you want to display icons, then use one of these plugins:
    " Plug 'kyazdani42/nvim-web-devicons' " lua
    "Plug 'ryanoasis/vim-devicons'       " vimscript

    " statusline
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    " Collection of common configurations for the nvim LSP client
    Plug 'neovim/nvim-lspconfig'
    " LSP installer
    Plug 'williamboman/nvim-lsp-installer'

    " shows hover and code actions
    " Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

    " Completion framework
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'

    " For luasnip users.
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    
    " Commenter
    Plug 'numToStr/Comment.nvim'
    
    " Git
    " Plug 'kdheepak/lazygit.nvim'
    Plug 'lewis6991/gitsigns.nvim'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    " fuzzy finder
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    " terminal
    Plug 'akinsho/toggleterm.nvim'

    " auto pair brackets
    Plug 'windwp/nvim-autopairs'

    " colorizer
    Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

""""""""""""""""""""""
" Plugin Settings    "
""""""""""""""""""""""

" colorscheme
" let g:tokyonight_style = "storm"
" let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:tokyonight_colors = {
"    \ 'hint': 'orange',
"  \ 'error': '#ff0000'
"\ }
"}
colorscheme iceberg
if system('pgrep -x picom > /dev/null && echo 1 || echo 0') == 1
	highlight Normal guibg=NONE
else
" #161821 is bg of iceberg theme
	highlight Normal guibg=#161821
endif

""""""""""""""""""""""
" Keybindings        "
""""""""""""""""""""""
" leader key
let mapleader = "\<SPACE>"
inoremap jk <escape>



""""""""""""""""""""""
" Telescope          "
""""""""""""""""""""""
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ss <cmd>Telescope current_buffer_fuzzy_find<cr>
" Telescope git_files search through the output of git ls-files command
" Telescope grep_string - searches for the string under your cursor in your pwd

lua <<EOF
require("mynvim.init")
EOF
