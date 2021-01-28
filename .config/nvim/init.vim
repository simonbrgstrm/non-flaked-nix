call plug#begin()

Plug 'ziglang/zig.vim'
Plug 'rust-lang/rust.vim'
Plug 'xolox/vim-lua-ftplugin'
Plug 'pangloss/vim-javascript'
Plug 'glepnir/dashboard-nvim'
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sheerun/vim-polyglot'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" ] ---- VIM SETTINGS ---- [

syntax on
set title
set hidden
set number relativenumber
set nocursorline
set ruler
set linebreak
set expandtab ts=4 sw=4 ai
set showtabline=2
set termguicolors
set noshowmode
set background=dark
set encoding=UTF-8
set clipboard+=unnamedplus

colorscheme tlou2

source ~/.config/nvim/status.vim
" source ~/.config/nvim/mappings.vim
" source ~/.config/nvim/settings.vim

let g:indentLine_fileTypeExclude = ['dashboard']

" treesitter settings

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,
    },
  indent = {
    enable = true,
    },
}
EOF


let g:dashboard_custom_header = [
\'  ████     ██                           ██             ',
\' ░██░██   ░██                          ░░              ',
\' ░██░░██  ░██  █████   ██████  ██    ██ ██ ██████████  ',
\' ░██ ░░██ ░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██ ',
\' ░██  ░░██░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██ ',
\' ░██   ░░████░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██ ',
\' ░██    ░░███░░██████░░██████   ░░██   ░██ ███ ░██ ░██ ',
\' ░░      ░░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░  ',
\ '',
\]
let g:dashboard_default_executive ='telescope'
