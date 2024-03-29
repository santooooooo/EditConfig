set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.vue,*.php'

Plugin 'preservim/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " requiredj

""call plug#begin()
""call plug#end()

set number
set list
set title
set fenc=utf-8
set cursorline
inoremap <silent> jj <Esc>
set autoindent
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<Left>
inoremap (<Enter> ()<Left><CR><Esc><S-o>
set hlsearch
nnoremap mm :nohlsearch<CR><Esc>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
colorscheme peachpuff
set autoread
set noswapfile
nnoremap @ :e!<CR><Esc>
nnoremap - :vert term<CR><Esc>
nnoremap ]] :NERDTree <Enter>
inoremap <silent> ll <C-o>a
