set nocompatible          " Disable compatibility with vi
set updatetime=100        " Lower updatetime for async processes

filetype on               " Enable type file detection.
filetype plugin on        " Enable plugins and load plugin for the detected file type.
filetype indent on        " Load an indent file for the detected file type.

syntax on                 " Turn syntax highlighting on.
set wrap                  " Do not wrap lines.
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0


set shiftwidth=2          " Set shift width to 2 spaces.
set tabstop=2             " Set tab width to 2 columns.
set softtabstop=4
set expandtab             " Use space characters instead of tabs.
set smartindent
set clipboard^=unnamed,unnamedplus
set conceallevel=0

set nobackup              " Do not save backup files.
set scrolloff=10          " Do not let cursor scroll below or above N number of lines when scrolling.

set showmode              " Show the mode you are on the last line.
set showcmd               " Show partial command you type in the last line of the screen.
set history=1000          " Set the commands to save in history default number is 20.
set wildmenu              " Enable autocomplete while working with file names.
set wildmode=list:longest " Make wildmenu behave like similar to Bash completion.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx        " Wildmenu will ignore files with these extensions.

set number                " Add numbers to each line on the left-hand side.
augroup numbertoggle      " Enable absolute line numbers while Insert mode is active. 
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugin-config.vim

" Searching
set hlsearch        " Use highlighting when doing a search.
set incsearch       " incrementally highlight matching characters as you type.
set ignorecase      " Ignore capital letters during search.
set smartcase       " ... unless they have at least one capital letter.
set showmatch       " Show matching words during a search.


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding via markers.
" zo to open a single fold under the cursor.
" zc to close the fold under the cursor.
" zR to open all folds.
" zM to close all folds.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If the current file type is HTML, set indentation to 2 spaces.
" autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to or greater than 7.3 enable undo after saving.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" %Y – Type of file in the buffer.
" %R – Displays the read-only flag.
" %b – Shows the ASCII/Unicode character under cursor.
" 0x%B – Shows the hexadecimal character under cursor.
" %l – Display the row number.
" %c – Display the column number.
" %p%% – Show the cursor percentage from the top of the file.

" }}}

" AESTHETICS ------------------------------------------------------------ {{{
if $TERM == 'linux'
    colorscheme pablo
elseif (has("termguicolors"))
	set termguicolors
  autocmd vimenter * ++nested colorscheme catppuccin_macchiato
  let g:lightline = {'colorscheme': 'catppuccin_macchiato'}
endif

" }}}
