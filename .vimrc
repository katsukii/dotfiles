" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
 
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'tell-k/vim-autopep8'
NeoBundle 'tyru/caw.vim.git'
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
NeoBundle 'sophacles/vim-processing'
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {}
let g:quickrun_config.processing =  {
      \     'command': 'processing-java',
      \     'exec': '%c --sketch=$PWD/ --output=/Library/Processing --run --force',
      \   }
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'editorconfig/editorconfig-vim'
:set statusline+=%{fugitive#statusline()} 
" NeoBundle 'itchyny/lightline.vim'
" NeoBundle 'taketwo/vim-ros'


set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif


"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



set hls
set number
syntax enable
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
