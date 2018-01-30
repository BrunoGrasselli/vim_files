set rtp+=/usr/local/Cellar/go/1.2.1/libexec/misc/vim/
call pathogen#infect()

set nocompatible

syntax on

set nowrap
set wildmode=list:longest
set hlsearch
set incsearch
set number
set mouse=a

" statusline
set statusline=%f       "path to the file
set statusline+=%=      "left/right separator
set statusline+=\ %y      "filetype
set statusline+=\ %c,   "cursor column
set statusline+=%l/%L   "cursor line/total lines
set laststatus=2

" indent
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set noignorecase
set shiftwidth=2

" mvim/gvim
set guioptions-=T
set guioptions-=m

" file type options
filetype plugin on
filetype indent on

if has("gui_running")
  set guifont=Monaco
endif

colorscheme tomorrow-night

autocmd BufRead,BufNewFile Gemfile set filetype=Gemfile

" key mapping
nmap <Tab> gt
nmap <S-Tab> gT
cmap <C-e> <C-r>=expand('%:p:h')<CR>/
vmap <C-t> :Tabularize /=/<Enter>
nmap <C-h>h i$<Esc>f(r f)xF$x
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <silent> <F6> :set lines=999 columns=999<Enter>
nmap <leader>] :noh<Enter>
map <leader>p "0p
ab rdb require 'debugger';debugger
" nnoremap <up> <C-a>
" nnoremap <down> <C-x>
nnoremap Y y$
nnoremap ; :

autocmd BufRead,BufNewFile *.tokamak set filetype=ruby
au BufRead,BufNewFile *.avdl setlocal filetype=avro-idl
au BufRead,BufNewFile *.avsc setlocal filetype=javascript
