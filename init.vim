set clipboard=unnamedplus
set cursorline
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
syntax on

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'honza/vim-snippets'
Plug 'folke/which-key.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'echasnovski/mini.nvim'
Plug 'folke/todo-comments.nvim'

" Colorschemes
Plug 'folke/tokyonight.nvim'

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

" let g:lsp_settings = { 'clangd': {'cmd': ['clangd-18', '.'], 'allowlist': ['c', 'cpp']}}
lua << EOF
require("bufferline").setup{
options = {
    diagnostics = "nvim_lsp",
    offsets = {
                {
                filetype="NvimTree",
                text="File Explorer"
                }
        }
}
}

require("tokyonight").setup()
EOF

silent! colorscheme tokyonight
