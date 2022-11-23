call plug#begin('~/.vim/plugged')

" status bar
Plug 'itchyny/lightline.vim'

" typing
Plug 'LunarWatcher/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

" navigation
"Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'

" IDE stuff
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif

" IDE Stuff !!WITH DEPENDENCIES!!
Plug 'neoclide/coc.nvim', {'branch': 'release'} "needs node
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} "needs node
Plug 'ThePrimeagen/vim-be-good' "needs nvim

" Themes
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'morhetz/gruvbox'

call plug#end()
