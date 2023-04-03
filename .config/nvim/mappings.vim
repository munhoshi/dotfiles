" Show leader key during timeout (bottom right corner)
set showcmd

" Press \\ to jump back to the last cursor position.
" nnoremap <leader>\ ``
nnoremap <leader>\ :nohl<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Plugin mappings
map <leader>b :Buffers<cr>
map <leader>f :Files<CR>
map <leader>r :Rg<CR>
nnoremap <leader>p :Prettier<CR>
" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving pages up and down
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Yank and paste to system clipboard and primary selection
vnoremap <C-c> "*y :let @+=@*<CR>
"map <C-P> "+P

" Disable dd cutting behavior by mapping it to the black hole register.
nnoremap d "_d
vnoremap d "_d

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
" nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
nnoremap <leader>h :vsplit<CR>
nnoremap <leader>v :split<CR>

" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Escape terminal mode by just pressing Esc
:tnoremap <Esc> <C-\><C-n>

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
" let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" VSCODE-LIKE ------------------------------------------------------------ {{{
nnoremap <C-A-j> :m .+1<CR>==
nnoremap <C-A-k> :m .-2<CR>==
vnoremap <C-A-j> :m '>+1<CR>gv=gv
vnoremap <C-A-k> :m '<-2<CR>gv=gv
"nnoremap <C-A-J> yyp
"nnoremap <C-A-K> yyP
"
" To mimic Ctrl+D:
" 1. /search for word and type cgn (Change Go to Next)
" 2. exit insert mode
" 3. press . (period). This repeats step 1's command (changes the current
" find, goes to the next) for every instance.
"
" }}}
