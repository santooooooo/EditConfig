set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.vue,*.php'

Plugin 'preservim/nerdtree'

Plugin 'universal-ctags/ctags'

Bundle 'flyinshadow/php_localvarcheck.vim'

call vundle#end()            " required
filetype plugin indent on    " requiredj

call plug#begin()
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

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

" setting for php
autocmd Filetype php inoremap <<Enter> <><Left>
autocmd Filetype php inoremap ?<Enter> ?php?<Left><CR><ESC><S-o>
autocmd Filetype php inoremap if<Enter> if() {<CR>}<Up><Right><Right>
autocmd Filetype php inoremap else<Enter> else {<CR>}<Up><End>

"setting for php-format
function! PhpForm() abort
  return system("~/.config/composer/vendor/bin/phpcbf ". expand("%"))
endfunction

"setting for laravel-test
function! LaravelTest() abort
	return system("php artisan test ". expand("%"))
endfunction

autocmd Filetype php nnoremap ^ :<C-u>call PhpForm()<CR>
autocmd Filetype php nnoremap t :<C-u>call LaravelTest()<CR>

" settring for auto-complete
autocmd FileType php setlocal omnifunc=phpactor#Complete
autocmd FileType php inoremap c<Enter> <C-x><C-o>
let g:python3_host_prog = '/usr/bin/python3'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" settring for something for php
function! DefinitionJumpWithPhpactor()
    vsplit
    call phpactor#GotoDefinition()
endfunction

autocmd Filetype php nnoremap go :<C-u>call DefinitionJumpWithPhpactor()<CR>
autocmd Filetype php nnoremap cc :<C-u>call phpactor#ClassNew()<CR>

" add '' to text
function! ChangeToTextData() abort
	let tmp = @@
	silent normal gvy
	let selected = @@
	let @@ = tmp
	let test = "'".selected."'"
	let line = line(".")
	execute ":".line.",".line." substitute/".selected."/".test
	return
endfunction

vnoremap ' :call ChangeToTextData()

